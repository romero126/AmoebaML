function New-AmoebaMLPipeline {
    [CmdletBinding()]
    param (

    )
    Write-Verbose ("{0}: {1}" -f $MyInvocation.MyCommand, "Created.");
    return [ref][Microsoft.ML.LearningPipeline]::new()
}