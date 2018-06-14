cd $psscriptroot\..\

Import-Module .\AmoebaML.Module\AmoebaML.psd1 -Passthru -Global | out-null

$Pipeline = New-AmoebaMLPipeline -Verbose
. .\Tests\HousePricePrediction.Models.Test.ps1 #Imports your Models.
#Microsoft is not including this dataset in its Github Library, which Unfortunatly means I will not either.
#I apologize for any inconveniance.
#[Fact(Skip = "Missing data set. See https://github.com/dotnet/machinelearning/issues/3")]
$Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLTextLoader -Model ([HousePriceData]) -Path ".\Tests\Data\kc_house_data.csv" -Seperator "comma" -AllowQuotedStrings -SupportsSparse -UseHeader)
$Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTransform -Type ColumnConcatenator -outputColumn "NumericalFeatures" -inputColumns @("SqftLiving", "SqftLot", "SqftAbove", "SqftBasement", "Lat", "Long", "SqftLiving15", "SqftLot15"))
$Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTransform -Type ColumnConcatenator -outputColumn "CategoryFeatures" -inputColumns @("Bedrooms", "Bathrooms", "Floors", "Waterfront", "View", "Condition", "Grade", "YearBuilt", "YearRenovated", "Zipcode"))
$Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTransform -Type CategoricalOneHotVectorizer -inputColumns "CategoryFeatures")
$Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTransform -Type ColumnConcatenator -outputColumn "Features" -inputColumns ("NumericalFeatures", "CategoryFeatures"))
$Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTrainer -Type StochasticDualCoordinateAscentRegressor)
$Model = Invoke-AmoebaMLPipeline -Pipeline $Pipeline -DataSet ([HousePriceData]) -Predictor ([HousePricePrediction])

$Object = [HousePriceData]@{
    Bedrooms = 3;
    Bathrooms = 2;
    SqftLiving = 1710;
    SqftLot = 4697;
    Floors = 1.5;
    Waterfront = 0;
    View = 0;
    Condition = 5;
    Grade = 6;
    SqftAbove = 1710;
    SqftBasement = 0;
    YearBuilt = 1941;
    YearRenovated = 0;
    Zipcode = 98002;
    Lat = 47.3048;
    Long = -122.218;
    SqftLiving15 = 1030;
    SqftLot15 = 4705;
}


write-host "`r`n"
write-host "`r`n"
write-host ("-" * 30)
write-host "Generating Prediction:"
write-host "Prediction Data"
#$Object
$Prediction = $Model.Predict($Object)
write-host ("-" * 30)
write-host "Your Price Prediction is:", $Prediction.Price

#write-host "Saving Data"

#$Model | Save-AmoebaMLModel -Path "$psscriptroot\Prediction.Model"
#write-host "$psscriptroot\Prediction.Model"
#Todo Create Load-AmoebaMLModel
