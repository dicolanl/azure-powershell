﻿#
# Module manifest for module 'PSGet_AzureRM'
#
# Generated by: Microsoft Corporation
#
# Generated on: 10/31/2016
#

@{

# Script module or binary module file associated with this manifest.
RootModule = '.\AzureRM.psm1'

# Version number of this module.
ModuleVersion = '3.4.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'b433e830-b479-4f7f-9c80-9cc6c28e1b51'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Azure Resource Manager Module'

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
RequiredModules = @(@{ModuleName = 'AzureRM.Profile'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'Azure.Storage'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.AnalysisServices'; RequiredVersion = '0.0.3'}, 
               @{ModuleName = 'Azure.AnalysisServices'; RequiredVersion = '0.0.1'}, 
               @{ModuleName = 'AzureRM.ApiManagement'; RequiredVersion = '3.3.0'; }, 
               @{ModuleName = 'AzureRM.Automation'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Backup'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Batch'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Cdn'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.CognitiveServices'; RequiredVersion = '0.4.3'; }, 
               @{ModuleName = 'AzureRM.Compute'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.DataFactories'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.DataLakeAnalytics'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.DataLakeStore'; RequiredVersion = '3.3.0'; }, 
               @{ModuleName = 'AzureRM.DevTestLabs'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Dns'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.EventHub'; RequiredVersion = '0.0.2'; }, 
               @{ModuleName = 'AzureRM.HDInsight'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Insights'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.IoTHub'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'AzureRM.KeyVault'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.LogicApp'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.MachineLearning'; RequiredVersion = '0.11.3'; }, 
               @{ModuleName = 'AzureRM.Media'; RequiredVersion = '0.3.3'; }, 
               @{ModuleName = 'AzureRM.Network'; RequiredVersion = '3.4.0'; }, 
               @{ModuleName = 'AzureRM.NotificationHubs'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.OperationalInsights'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.PowerBIEmbedded'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.RecoveryServices'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.RecoveryServices.Backup'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.RedisCache'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Resources'; RequiredVersion = '3.5.0'; }, 
               @{ModuleName = 'AzureRM.Scheduler'; RequiredVersion = '0.11.3'; }, 
               @{ModuleName = 'AzureRM.ServerManagement'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.ServiceBus'; RequiredVersion = '0.1.0'; }, 
               @{ModuleName = 'AzureRM.SiteRecovery'; RequiredVersion = '3.4.0'; }, 
               @{ModuleName = 'AzureRM.Sql'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Storage'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.StreamAnalytics'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Tags'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.TrafficManager'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.UsageAggregates'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'AzureRM.Websites'; RequiredVersion = '2.5.0'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Update-AzureRM', 'Import-AzureRM', 'Uninstall-AzureRM'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Install-AzureRM'

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
        # Tags = @()

        # A URL to the license for this module.
        LicenseUri = 'https://raw.githubusercontent.com/Azure/azure-powershell/dev/LICENSE.txt'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '2016.12.14 - Version 3.3.0
* ApiManagement
    * Added new cmdlets to manage external Identity Provider Configurations
        - New-AzureRmApiManagementIdentityProvider
        - Set-AzureRmApiManagementIdentityProvider
        - Get-AzureRmApiManagementIdentityProvider
        - Remove-AzureRmApiManagementIdentityProvider
    * Updated the client to use .net client 3.2.0 AzureRm.ApiManagement which has RBAC support
    * Updated cmdlet Import-AzureRmApiManagementApi to allow importing an Wsdl type API as either Soap Pass Through (ApiType = Http) or Soap To Rest (ApiType = Soap). Default is Soap Pass Through.
    * Fixed Issue https://github.com/Azure/azure-powershell/issues/3217
* Compute
    * Add Remove-AzureRmVMSecret cmdlet.
    * Based on user feedback (https://github.com/Azure/azure-powershell/issues/1384), we''ve added a DisplayHint property to VM object to enable Compact and Expand display modes. This is similar to `Get -Date - DisplayHint Date` cmdlet. By default, the return of `Get-AzureRmVm -ResourceGroupName <rg-name> -Name <vm-name>` will be compact. You can expand the output using `-DisplayHint Expand` parameter.
    * UPCOMING BREAKING CHANGE Notification: We''ve added a warning about removing ` DataDiskNames` and ` NetworkInterfaceIDs` properties from the returned VM object from `Get-AzureRmVm -ResourceGroupName <rg-name> -Name <vm-name` cmdlet. Please update your scripts to access these properties in the following way:
        - `$vm.StorageProfile.DataDisks`
        - `$vm.NetworkProfile.NetworkInterfaces`
    * Updated Set-AzureRmVMChefExtension cmdlet to add following new options :
        - JsonAttribute : A JSON string to be added to the first run of chef-client. e.g. -JsonAttribute ''{"container_service": {"chef-init-test": {"command": "C:\\opscode\\chef\\bin"}}}''
        - ChefServiceInterval : Specifies the frequency (in minutes) at which the chef-service runs. If in case you don''t want the chef-service to be installed on the Azure VM then set value as 0 in this field. e.g. -ChefServiceInterval 45
* DataLakeAnalytics
    * Removal of unsupported parameters in Add and Set-AzureRMDataLakeAnalyticsDataSource (default for data lake store)
    * Removed unsupported parameter in Set-AzureRMDataLakeAnalyticsAccount (default data lake store)
    * Introduction of deprecation warning for nested properties for all ARM resources. Nested properties will be removed in a future release and all properties will be moved one level up.
    * Added the ability to set MaxDegreeOfParallelism, MaxJobCount and QueryStoreRetention in New and Set-AzureRMDataLakeAnalyticsAccount
    * Removed invalid return value from New-AzureRMDataLakeAnalyticsCatalogSecret
* DataLakeStore
    * Introduction of deprecation warning for nested properties for all ARM resources. Nested properties will be removed in a future release and all properties will be moved one level up.
    * Removed the ability to set encryption in Set-AzureRMDataLakeStoreAccount (never was supported)
    * Added ability to enable/disable firewall rules and the trusted id providers during Set-AzureRMDataLakeStoreAccount
    * Added a new cmdlet: Set-AzureRMDataLakeStoreItemExpiry, which allows the user to set or remove the expiration for files (not folders) in their ADLS account.
    * Small fix for friendly date properties to pivot off UTC time instead of local time, ensuring standard time reporting.
* EventHub
    * Adds commandlets for the Azure EventHub
* Insights
    * Parameter now accepts two more values in New-AzureRmAutoscaleRule
        - Parameter ScaleType now accepts the previous ChangeCount (default) plus two more values PercentChangeCount, and ExactCount
        - Add a warning message about this parameter accepting two more values
    * Add parameter became optional in Add-AzureRmLogProfile
        - Parameter StorageAccountId is now optional
    * Minor changes to the output classes to expose more properties
        - Before the user could see the properties because they were printed, but not access them programatically because they were protected for instance.
* IotHub
    * Adds commandlets for the Azure IoT Hub 
* MachineLearning
    * Serialization and deserialization improvements for all cmdlets
* NotificationHubs
    * Added the skuTier parameter to set the sky for namespace
        - New-AzureRmNotificationHubsNamespace
        - Set-AzureRmNotificationHubsNamespace
* RecoveryServices.Backup
    * Migrated from Hyak based Azure SDK to Swagger based Azure SDK
* Resources
    * Support ResourceNameEquals and ResourceGroupNameEquals as parameters for Find-AzureRmResource
        - Users can now use ResourceNameEquals and ResourceGroupNameEquals with Find-AzureRmResource
* ServiceBus
    * Adds commandlets for the Azure ServiceBus
* Sql
    * Added storage properties to cmdlets for Azure SQL threat detection policy management at database and server level 
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
* Websites
    * Add: PerSiteScaling option on cmdlets New-AzureRmAppservicePlan and Set-AzureRmAppServicePlan
    * Add: NumberOfWorkers option on cmdlets Set-AzureRmWebApp and Set-AzureRmWebAppSlot
    * Add: Help documentation using platyPS
* ServiceManagement
    * Updated Set-AzureVMChefExtension cmdlet to add following new options :
        - JsonAttribute : A JSON string to be added to the first run of chef-client. e.g. -JsonAttribute ''{"container_service": {"chef-init-test": {"command": "C:\\opscode\\chef\\bin"}}}''
        - ChefServiceInterval : Specifies the frequency (in minutes) at which the chef-service runs. If in case you don''t want the chef-service to be installed on the Azure VM then set value as 0 in this field. e.g. -ChefServiceInterval 45
    * Updated New-AzureVirtualNetworkGatewayConnection cmdlet to add validation on acceptable input parameter:GatewayConnectionType values sets and it can be case insensitive:
        - GatewayConnectionType : Added validation to accept only set of values:- ''ExpressRoute''/''IPsec''/''Vnet2Vnet''/''VPNClient'' and acceptable set of values can be passed in any casing.
    * Updating Managed Cache warning message which notifies customer about service deprecation on the following cmdlets :
        - Get-AzureManagedCache
        - Get-AzureManagedCacheAccessKey
        - Get-AzureManagedCacheLocation
        - Get-AzureManagedCacheNamedCache
        - New-AzureManagedCache
        - New-AzureManagedCacheAccessKey
        - New-AzureManagedCacheNamedCache
        - Remove-AzureManagedCache
        - Remove-AzureManagedCacheNamedCache
        - Set-AzureManagedCache
        - Set-AzureManagedCacheNamedCache
    * For more information about Managed Cache service deprecation, see http://go.microsoft.com/fwlink/?LinkID=717458'

        # External dependent modules of this module
        # ExternalModuleDependencies = ''

    } # End of PSData hashtable
    
 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
