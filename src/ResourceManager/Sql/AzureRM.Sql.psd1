﻿#
# Module manifest for module 'PSGet_AzureRM.Sql'
#
# Generated by: Microsoft Corporation
#
# Generated on: 12/13/2016
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '2.5.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '150d9544-6348-4373-806f-10cd0b4de4cb'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Sql service cmdlets for Azure Resource Manager'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
CLRVersion = '4.0'

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'AzureRM.Profile'; ModuleVersion = '2.5.0'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
TypesToProcess = '.\Microsoft.Azure.Commands.Sql.Types.ps1xml'

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = '.\Microsoft.Azure.Commands.Sql.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('.\Microsoft.Azure.Commands.Sql.dll')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzureRmSqlDatabaseTransparentDataEncryption', 
               'Get-AzureRmSqlDatabaseTransparentDataEncryptionActivity', 
               'Set-AzureRmSqlDatabaseTransparentDataEncryption', 
               'Get-AzureRmSqlDatabaseUpgradeHint', 
               'Get-AzureRmSqlServerUpgradeHint', 
               'Get-AzureRmSqlServerServiceObjective', 
               'Get-AzureRmSqlServerUpgrade', 'Start-AzureRmSqlServerUpgrade', 
               'Stop-AzureRmSqlServerUpgrade', 
               'Get-AzureRmSqlServerActiveDirectoryAdministrator', 
               'Remove-AzureRmSqlServerActiveDirectoryAdministrator', 
               'Set-AzureRmSqlServerActiveDirectoryAdministrator', 
               'Get-AzureRmSqlServer', 'New-AzureRmSqlServer', 
               'Remove-AzureRmSqlServer', 'Set-AzureRmSqlServer', 
               'Get-AzureRmSqlServerCommunicationLink', 
               'New-AzureRmSqlServerCommunicationLink', 
               'Remove-AzureRmSqlServerCommunicationLink', 
               'Get-AzureRmSqlDatabaseSecureConnectionPolicy', 
               'Get-AzureRmSqlDatabaseReplicationLink', 
               'New-AzureRmSqlDatabaseCopy', 'New-AzureRmSqlDatabaseSecondary', 
               'Remove-AzureRmSqlDatabaseSecondary', 
               'Set-AzureRmSqlDatabaseSecondary', 
               'Get-AzureRmSqlElasticPoolRecommendation', 
               'Get-AzureRmSqlDatabaseIndexRecommendations', 
               'Start-AzureRmSqlDatabaseExecuteIndexRecommendation', 
               'Stop-AzureRmSqlDatabaseExecuteIndexRecommendation', 
               'Get-AzureRmSqlServerFirewallRule', 
               'New-AzureRmSqlServerFirewallRule', 
               'Remove-AzureRmSqlServerFirewallRule', 
               'Set-AzureRmSqlServerFirewallRule', 'Get-AzureRmSqlElasticPool', 
               'Get-AzureRmSqlElasticPoolActivity', 
               'Get-AzureRmSqlElasticPoolDatabase', 'New-AzureRmSqlElasticPool', 
               'Remove-AzureRmSqlElasticPool', 'Set-AzureRmSqlElasticPool', 
               'Get-AzureRmSqlServerDisasterRecoveryConfiguration', 
               'Get-AzureRmSqlServerDisasterRecoveryConfigurationActivity', 
               'New-AzureRmSqlServerDisasterRecoveryConfiguration', 
               'Remove-AzureRmSqlServerDisasterRecoveryConfiguration', 
               'Set-AzureRmSqlServerDisasterRecoveryConfiguration', 
               'Resume-AzureRmSqlDatabase', 'Suspend-AzureRmSqlDatabase', 
               'Get-AzureRmSqlDatabaseDataMaskingPolicy', 
               'Get-AzureRmSqlDatabaseDataMaskingRule', 
               'New-AzureRmSqlDatabaseDataMaskingRule', 
               'Remove-AzureRmSqlDatabaseDataMaskingRule', 
               'Set-AzureRmSqlDatabaseDataMaskingPolicy', 
               'Set-AzureRmSqlDatabaseDataMaskingRule', 'Get-AzureRmSqlCapability', 
               'Get-AzureRmSqlServerThreatDetectionPolicy', 
               'Remove-AzureRmSqlServerThreatDetectionPolicy', 
               'Set-AzureRmSqlServerThreatDetectionPolicy', 
               'Get-AzureRmSqlDatabaseThreatDetectionPolicy', 
               'Set-AzureRmSqlDatabaseThreatDetectionPolicy', 
               'Remove-AzureRmSqlDatabaseThreatDetectionPolicy', 
               'Get-AzureRmSqlDatabase', 'Get-AzureRmSqlDatabaseActivity', 
               'Get-AzureRmSqlDatabaseExpanded', 'New-AzureRmSqlDatabase', 
               'Remove-AzureRmSqlDatabase', 'Set-AzureRmSqlDatabase', 
               'Get-AzureRmSqlDatabaseImportExportStatus', 
               'New-AzureRmSqlDatabaseExport', 'New-AzureRmSqlDatabaseImport', 
               'Get-AzureRmSqlDatabaseGeoBackupPolicy', 
               'Set-AzureRmSqlDatabaseGeoBackupPolicy', 
               'Get-AzureRmSqlDeletedDatabaseBackup', 
               'Get-AzureRmSqlDatabaseGeoBackup', 
               'Get-AzureRmSqlDatabaseBackupLongTermRetentionPolicy', 
               'Get-AzureRmSqlServerBackupLongTermRetentionVault', 
               'Restore-AzureRmSqlDatabase', 
               'Set-AzureRmSqlDatabaseBackupLongTermRetentionPolicy', 
               'Set-AzureRmSqlServerBackupLongTermRetentionVault', 
               'Get-AzureRmSqlDatabaseRestorePoints', 
               'Get-AzureRmSqlDatabaseAuditingPolicy', 
               'Get-AzureRmSqlServerAuditingPolicy', 
               'Remove-AzureRmSqlDatabaseAuditing', 
               'Remove-AzureRmSqlServerAuditing', 
               'Set-AzureRmSqlDatabaseAuditingPolicy', 
               'Set-AzureRmSqlServerAuditingPolicy', 
               'Use-AzureRmSqlServerAuditingPolicy', 
               'Get-AzureRmSqlDatabaseRecommendedAction', 
               'Get-AzureRmSqlElasticPoolRecommendedAction', 
               'Get-AzureRmSqlServerRecommendedAction', 
               'Set-AzureRmSqlDatabaseRecommendedActionState', 
               'Set-AzureRmSqlElasticPoolRecommendedActionState', 
               'Set-AzureRmSqlServerRecommendedActionState', 
               'Get-AzureRmSqlElasticPoolAdvisor', 'Get-AzureRmSqlServerAdvisor', 
               'Set-AzureRmSqlElasticPoolAdvisorAutoExecuteStatus', 
               'Set-AzureRmSqlServerAdvisorAutoExecuteStatus', 
               'Get-AzureRmSqlDatabaseAdvisor', 
               'Set-AzureRmSqlDatabaseAdvisorAutoExecuteStatus'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Get-AzureRmSqlDatabaseServerAuditingPolicy', 
               'Remove-AzureRmSqlDatabaseServerAuditing', 
               'Set-AzureRmSqlDatabaseServerAuditingPolicy', 
               'Use-AzureRmSqlDatabaseServerAuditingPolicy'

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
        Tags = 'Azure','ResourceManager','ARM','Sql','Database'

        # A URL to the license for this module.
        LicenseUri = 'https://raw.githubusercontent.com/Azure/azure-powershell/dev/LICENSE.txt'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Added storage properties to cmdlets for Azure SQL threat detection policy management at database and server level 
    - StorageAccountName
    - RetentionInDays
* Removed the unsupported param "AuditAction" from Set-AzureSqlDatabaseServerAuditingPolicy
* Added new param "AuditAction" to Set-AzureSqlDatabaseAuditingPolicy
* Fix for showing on GET and persisting Tags on SET (if not given) for Database, Server and Elastic Pool 
    - If Tags is used in command it will save tags, if not it will not wipe out tags on resource.
* Fix for showing on GET and persisting Tags on SET (if not given) for Database, Server and Elastic Pool 
    - If Tags is used in command it will save tags, if not it will not wipe out tags on resource.
* Changes for "New-AzureRmSqlDatabase", "Set-AzureRmSqlDatabase" and "Get-AzureRmSqlDatabase" cmdlets
    - Adding a new parameter called "ReadScale" for the 3 cmdlets above.
    - The "ReadScale" parameter has 2 possibl values: "Enabled" or "Disabled" to indicate whether the ReadScale option is turned on for the database.
* Functionality of ReadScale Feature.
    - ReadScale is a new feature in SQL Database, which allows the user to enabled/disable routing read-only requests to Geo-secondary Premium databases.
    - This feature allows the customer to scale up/down their read-only workload flexibly, and unlocked more DTUs for the premium database.
    - To configure ReadScale, user simply specify "ReadScale" paramter with "Enabled/Disabled" at database creation with New-AzureRmSqlDatabase cmdlet, 
'

        # External dependent modules of this module
        # ExternalModuleDependencies = ''

    } # End of PSData hashtable
    
 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

