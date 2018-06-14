
$ClassTemplate = Get-Content "$PSScriptRoot\AmoebaML_Helper.cs" -raw
write-host 'Loading Library'

$Assemblies = @(
    'Microsoft.ML.Api, Version=1.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51', 'netstandard, Version=2.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51',
    'Microsoft.ML'
)
Add-Type -typedef $ClassTemplate -ReferencedAssemblies $Assemblies
