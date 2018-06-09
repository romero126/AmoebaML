function Invoke-AmoebaMLPipeline {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$True)]
        [ref]$Pipeline,
        [Parameter(Mandatory)]
        [Type]$DataSet,
        [Parameter(Mandatory)]
        [Type]$Predictor
        
    )
    $Method = [Microsoft.ML.LearningPipeline].GetMethod("Train").MakeGenericMethod([Type]$DataSet,[Type]$Predictor)
    try {
        return $Method.Invoke($Pipeline.Value, $null)
    }
    catch {
        write-host ( @(
        $_
        $_.exception.InnerException.StackTrace
        $_.exception
        $_.exception.InnerException
        $_.exception.InnerException.InnerException
        $_.exception.InnerException.InnerException.InnerException
        $_.exception.InnerException.InnerException.InnerException.InnerException
        ) | out-string )
    }
}