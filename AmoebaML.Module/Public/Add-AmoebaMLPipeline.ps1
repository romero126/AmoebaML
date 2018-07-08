function Add-AmoebaMLPipeline {

    
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$True)]
        [ref]$Pipeline,
        #[Microsoft.ML.LearningPipeline]
        [Parameter(Mandatory,Position=1)]
        [object]$object
    )
    if ($Pipeline.Value.GetType() -ne [Microsoft.ML.LearningPipeline]) {
        throw "Pipeline expecting type Microsoft.ML.LearningPipeline."
    }
    Write-Verbose ("{0}: {1}" -f $MyInvocation.MyCommand, "added Successfully.");
    $Pipeline.Value.Add($object)
}

