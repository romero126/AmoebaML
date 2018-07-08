Import-Module .\AmoebaML.Module\AmoebaML.psd1 -Passthru -Global | out-null

Describe "HousePricePrediction" {
    $Pipeline = New-AmoebaMLPipeline -Verbose
    . .\Tests\HousePricePrediction.Models.Test.ps1 #Imports your Models.
    It "Build your Pipeline" {
        #Microsoft is not including this dataset in its Github Library, which Unfortunatly means I will not either.
        #I apologize for any inconveniance.
        #[Fact(Skip = "Missing data set. See https://github.com/dotnet/machinelearning/issues/3")]
        $Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLTextLoader -Model ([HousePriceData]) -Path ".\Tests\Data\kc_house_data.csv" -Seperator "comma" -AllowQuotedStrings -SupportsSparse -UseHeader)
        $Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTransform -Type ColumnConcatenator -outputColumn "NumericalFeatures" -inputColumns @("SqftLiving", "SqftLot", "SqftAbove", "SqftBasement", "Lat", "Long", "SqftLiving15", "SqftLot15"))
        $Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTransform -Type ColumnConcatenator -outputColumn "CategoryFeatures" -inputColumns @("Bedrooms", "Bathrooms", "Floors", "Waterfront", "View", "Condition", "Grade", "YearBuilt", "YearRenovated", "Zipcode"))
        $Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTransform -Type CategoricalOneHotVectorizer -inputColumns "CategoryFeatures")
        $Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTransform -Type ColumnConcatenator -outputColumn "Features" -inputColumns ("NumericalFeatures", "CategoryFeatures"))
        $Pipeline | Add-AmoebaMLPipeline (New-AmoebaMLPipelineTrainer -Type StochasticDualCoordinateAscentRegressor)
    }
    $Model = $true
    IT "Test Predictor" {
        $Model = Invoke-AmoebaMLPipeline -Pipeline $Pipeline -DataSet ([HousePriceData]) -Predictor ([HousePricePrediction])
        #$Model | should -be 
        return $false
    }
    write-host ( $Model | gm | out-string )
    #$Model = Invoke-AmoebaMLPipeline -Pipeline $Pipeline -DataSet ([HousePriceData]) -Predictor ([HousePricePrediction]) | out-null
    #write-host ($Model | gm | out-string)
}