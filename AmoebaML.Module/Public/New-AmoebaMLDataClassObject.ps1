function New-AmoebaMLDataClassObject {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateSet("Column", "ColumnName")]
        [String]$ColumnType,
        [Parameter(Mandatory=$true)]
        [String]$Type,
        [String]$Ordinal,
        [string]$Name
    )
    #[ValidateSet("string", "float", "bool")]
    return  new-object PSObject -Property @{ ColumnType=$ColumnType; Type=$Type; Ordinal=$Ordinal; Name=$Name} 
}