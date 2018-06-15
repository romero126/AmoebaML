function Export-AmoebaMLModel {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$True)]
        [Microsoft.ML.PredictionModel]$Model,
        [String]$Path
    )
    $Task = $Model.WriteAsync($Path);
    
    while (!$Task.IsCompleted) {}
    Write-Verbose ("{0}: {1}" -f $MyInvocation.MyCommand, "Successfully Exported.");
    return
}