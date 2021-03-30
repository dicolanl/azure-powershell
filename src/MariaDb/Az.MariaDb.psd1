#
# Module manifest for module 'Az.MariaDb'
#
# Generated by: Microsoft Corporation
#
# Generated on: 9/29/2020
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Az.MariaDb.psm1'

# Version number of this module.
ModuleVersion = '0.2.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'c3b6a676-7237-4989-99d0-9df520acda9f'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell: MariaDb cmdlets'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '2.2.7'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = './bin/Az.MariaDb.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Az.MariaDb.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-AzMariaDbConfiguration', 'Get-AzMariaDbConnectionString', 
               'Get-AzMariaDbFirewallRule', 'Get-AzMariaDbReplica', 
               'Get-AzMariaDbServer', 'Get-AzMariaDbVirtualNetworkRule', 
               'New-AzMariaDbFirewallRule', 'New-AzMariaDbReplica', 
               'New-AzMariaDbServer', 'New-AzMariaDbVirtualNetworkRule', 
               'Remove-AzMariaDbFirewallRule', 'Remove-AzMariaDbServer', 
               'Remove-AzMariaDbVirtualNetworkRule', 'Restart-AzMariaDbServer', 
               'Restore-AzMariaDbServer', 'Update-AzMariaDbConfiguration', 
               'Update-AzMariaDbFirewallRule', 'Update-AzMariaDbServer', 
               'Update-AzMariaDbVirtualNetworkRule'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','PSModule','MariaDb'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Removed legacy SkuSize from input and output [#12734]
* New/Update-AzMyMariaDbFirewallRule create a default name with time stamp when no name is passed [#12737]
* Added validateset for parameter StorageAutogrow [#12735]
* Renamed New-AzMySqlServerReplica to ''New-AzMySqlReplica'' [#12741]
* Used ''master'' and ''replica'' to avoid confusion when created mysql replica server [#12742]
* Provided hint in doc to use Update-AzMySqlServer & Update-AzMySqlServerConfiguration as a candidate for each other [#12744]
* Fixed secure string decryption issue in PowerShell 7 [#12954]'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

