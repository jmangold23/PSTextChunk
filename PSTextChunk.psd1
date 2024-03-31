@{
    # Script module or binary module file associated with this manifest.
    RootModule = 'PSTextChunk.psm1'

    # Version number of this module.
    ModuleVersion = '1.0.0'

    # ID used to uniquely identify this module
    GUID = 'd8a638db-a2b4-45ed-b976-0b592dd02fb3'

    # Author of this module
    Author = 'Johsua Mangold'

    # Company or vendor of this module
    CompanyName = 'Johsua Mangold'

    # Copyright statement for this module
    Copyright = '(c) Johsua Mangold. All rights reserved.'

    # Description of the functionality provided by this module
    Description = 'The PSTextChunk module offers a function for segmenting lengthy texts into manageable, overlapping chunks for detailed, context-sensitive text analysis.'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.0'

    # Functions to export from this module
    FunctionsToExport = 'Get-OverlappingTextChunks'

    # Aliases to export from this module
    AliasesToExport = @()

    # Cmdlets to export from this module
    CmdletsToExport = @()

    # Variables to export from this module
    VariablesToExport = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @()

    # List of all files included in this module
    FileList = @('PSTextChunk.psm1')
}
