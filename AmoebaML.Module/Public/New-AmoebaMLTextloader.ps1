function New-AmoebaMLTextLoader {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [Type]$Model,
        [Parameter(Mandatory)]
        [String]$Path,
        [Switch]$UseHeader,
        [String]$Seperator = "comma",
        [Switch]$AllowQuotedStrings,
        [Switch]$SupportsSparse,
        [Switch]$TrimWhiteSpace
    )
    Write-Verbose ("{0}: {1}" -f $MyInvocation.MyCommand, "Called.");
    if (-not (Test-Path $Path)) {
        throw "Cannot find path `'$Path`' because it does not exist."
        return
    }
    $Files = ls $path
    if ($Files.Count -ne 1) {
        throw "Path must only be to a single file not a directory."
        return
    }
    $Path = $Files.FullName
    return new-object -TypeName "Microsoft.ML.TextLoader[$Model]" -ArgumentList @($Path, $UseHeader, $Seperator, $AllowQuotedStrings, $SupportsSparse, $TrimWhiteSpace)
}