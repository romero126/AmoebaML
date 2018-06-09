function New-AmoebaMLDataClass {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [Object]$InputObject,
        [Parameter(Mandatory=$true)]
        [string]$ClassName
    )
    #Define Data
    $ClassTemplate = "using System; using Microsoft.ML.Runtime.Api;public class {0} {`t{1}}"
    $ClassData = new-object "System.Collections.ArrayList"
    #Build Class Data
    $Fields = $InputObject[0].psobject.Properties.name
    foreach ($Field in $Fields) {
        $obj = $InputObject.($Field)
        $Ordinal = ($null, ("ordinal: `"{0}`"" -f $obj.Ordinal))[$obj.Ordinal.Length -gt 0]
        $Name = ($null, ("name: `"{0}`"" -f $obj.Name))[$obj.Name.Length -gt 0]
        $ColumnSep = ($null, ",")[$Ordinal -and $Name]
        [void]$ClassData.Add( ("[{0}({1}{2}{3})]`r`n`tpublic {4} {5};" -f $obj.ColumnType, $Ordinal, $ColumnSep, $Name, $obj.Type, $Field) )
    }
    $ClassData = ($ClassData -join "`r`n`t")
    $ClassTemplate = $ClassTemplate.Replace("{0}", $ClassName).Replace("{1}",$ClassData)
    #return $ClassTemplate
    if (!([System.Management.Automation.PSTypeName]$ClassName).Type){
        Add-Type -typedef $ClassTemplate -ReferencedAssemblies 'Microsoft.ML.Api, Version=1.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51', 'netstandard, Version=2.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51'
        Write-Verbose "Created a new class named $ClassName"
    } else {
        Write-Warning "'$ClassName' class already exist. Reload the shell if the source data changed"
    }
}