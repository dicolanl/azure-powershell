@{
  GUID = '7d850199-53a2-4541-8dfc-bbdf74f079f0'
  RootModule = './Az.SecurityInsights.psm1'
  ModuleVersion = '0.1.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: SecurityInsights cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.SecurityInsights.private.dll'
  FormatsToProcess = './Az.SecurityInsights.format.ps1xml'
  FunctionsToExport = 'Get-AzSentinelAlertRule', 'Get-AzSentinelAlertRuleAction', 'Get-AzSentinelAlertRuleTemplate', 'Get-AzSentinelBookmark', 'Get-AzSentinelDataConnector', 'Get-AzSentinelIncident', 'Get-AzSentinelIncidentComment', 'New-AzSentinelAction', 'New-AzSentinelAlertRule', 'New-AzSentinelBookmark', 'New-AzSentinelDataConnector', 'New-AzSentinelIncident', 'New-AzSentinelIncidentComment', 'Remove-AzSentinelAction', 'Remove-AzSentinelAlertRule', 'Remove-AzSentinelBookmark', 'Remove-AzSentinelDataConnector', 'Remove-AzSentinelIncident', 'Set-AzSentinelAction', 'Set-AzSentinelAlertRule', 'Set-AzSentinelBookmark', 'Set-AzSentinelDataConnector', 'Set-AzSentinelIncident', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'PSModule', 'SecurityInsights'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
    }
  }
}
