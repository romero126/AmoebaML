cd $psscriptroot\..\

Import-Module .\AmoebaML.Module\AmoebaML.psd1 -Passthru -Global | out-null

. .\Tests\HousePricePrediction.Models.Test.ps1 #Imports your Models.

#([AmoebaML.Helper]).DeclaredConstructors

<#
$v = [AmeobaML.Helper[HousePriceData,HousePricePrediction]]::new()
#$v = [AmoebaML.Helper]::new([HousepriceData], [HousePricePrediction])
$path = ls Tests\Prediction.Model | % FullName

$v.Load($path)
#>

#[Microsoft.ML.PredictionModel`2[HousePriceData,HousePricePrediction]]


#

$Model = Load-AmoebaMLModel -Path "$psscriptroot\Prediction.Model" -DataSet ([HousePriceData]) -Predictor ([HousePricePrediction])

return

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
$Object
$Prediction = $Model.Predict($Object)
write-host ("-" * 30)
write-host "Your Price Prediction is:", $Prediction.Price


