function Load-AmoebaMLModel {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$True)]
        [String]$Path,
        [Parameter(Mandatory)]
        [Type]$DataSet,
        [Parameter(Mandatory)]
        [Type]$Predictor
        
    )
    #$Method = [Microsoft.ML.LearningPipeline].GetMethod("Train").MakeGenericMethod([Type]$DataSet,[Type]$Predictor)

    if (!(Test-Path $Path)) {
        throw "Cannot load Model file does not exist."
    }

    $Method = [Microsoft.ML.PredictionModel].GetMethod("ReadASync").MakeGenericMethod([Type]$DataSet,[Type]$Predictor)
    return $Method
    return
    #
    $ASyncData = $Method.Invoke( $Path)
    #$Method.Invoke($Pipeline.Value, $null)
    #$ASyncData = [Microsoft.ML.PredictionModel]::ReadAsync($Path)
    Write-Verbose ("{0}: {1}" -f $MyInvocation.MyCommand, "Loading File.");
    while ($true) {
        if ($ASyncData.IsCompleted -eq $true) {
            break
        }
    }
    return $ASyncData.Result
}