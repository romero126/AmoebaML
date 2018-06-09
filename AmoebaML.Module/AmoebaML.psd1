#
# Module manifest for module 'AmoebaML'
#
# Generated by: Juan Romero
#
# Generated on: 2018/06/2018
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule         = 'AmoebaML.psm1'

    # Version number of this module.
    ModuleVersion      = '1.0'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID               = 'a0e5ade7-1e4d-4790-89ea-e349ec557d54'

    # Author of this module
    Author             = 'Juan Romero'

    # Company or vendor of this module
    CompanyName        = 'R126 llc'

    # Copyright statement for this module
    Copyright          = '(c) 2018 R126. All rights reserved.'

    # Description of the functionality provided by this module
    Description        = 'Microsoft Machine Learning .NET Wrapper'

    # Minimum version of the Windows PowerShell engine required by this module
    # PowerShellVersion = ''

    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    DotNetFrameworkVersion = '4.7'

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies = @(
        'Libraries\Google.Protobuf.dll'
        'Libraries\Microsoft.ML.Api.dll'
        'Libraries\Microsoft.ML.Core.dll'
        'Libraries\Microsoft.ML.CpuMath.dll'
        'Libraries\Microsoft.ML.Data.dll'
        'Libraries\Microsoft.ML.dll'
        'Libraries\Microsoft.ML.FastTree.dll'
        'Libraries\Microsoft.ML.InternalStreams.dll'
        'Libraries\Microsoft.ML.KMeansClustering.dll'
        'Libraries\Microsoft.ML.Maml.dll'
        'Libraries\Microsoft.ML.PCA.dll'
        'Libraries\Microsoft.ML.PipelineInference.dll'
        'Libraries\Microsoft.ML.ResultProcessor.dll'
        'Libraries\Microsoft.ML.StandardLearners.dll'
        'Libraries\Microsoft.ML.Sweeper.dll'
        'Libraries\Microsoft.ML.Transforms.dll'
        'Libraries\Microsoft.ML.UniversalModelFormat.dll'
        'Libraries\Newtonsoft.Json.dll'
    )

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport  = '*'

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport    = '*'

    # Variables to export from this module
    VariablesToExport  = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport    = '*'

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData        = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            # Tags = @()

            # A URL to the license for this module.
            # LicenseUri = ''

            # A URL to the main website for this project.
            # ProjectUri = ''

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            # ReleaseNotes = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}

