function Import-AmoebaMLModel {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$True)]
        [String]$Path,
        [Parameter(Mandatory)]
        [Type]$DataSet,
        [Parameter(Mandatory)]
        [Type]$Predictor
        
    )

    if (!(Test-Path $Path)) {
        throw "Cannot load Model file does not exist."
    }
    $Model = new-object "AmoebaML.Helper[$Dataset,$Predictor]"
    Write-Verbose ("{0}: {1}" -f $MyInvocation.MyCommand, "Created Model");
    return $Model.LoadModel($Path)
}