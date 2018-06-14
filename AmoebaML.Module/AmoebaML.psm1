write-Host "Loading Amoeba Machine Learning a Microsoft.ML.Runtime"

function LOG()
{

    write-host ($args | out-string)


}



$Public  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

foreach ($ScriptFile in @($Public + $Private) ) {
    try {
        . $ScriptFile.FullName
    }
    catch {
        Write-Warning "Unable to Load $($ScriptFile.FullName)"
        Write-Error $_
        break;
    }
}

Export-ModuleMember -Function $Public.BaseName