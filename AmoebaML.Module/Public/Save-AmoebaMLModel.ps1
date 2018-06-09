function Save-AmoebaMLModel {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$True)]
        [Microsoft.ML.PredictionModel]$Model,
        [String]$Path
    )
    $Model.WriteAsync($Path);
}