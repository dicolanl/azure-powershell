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
  FunctionsToExport = 'Get-AzSecurityInsightsAction', 'Get-AzSecurityInsightsAlertRule', 'Get-AzSecurityInsightsAlertRuleAction', 'Get-AzSecurityInsightsAlertRuleTemplate', 'Get-AzSecurityInsightsBookmark', 'Get-AzSecurityInsightsDataConnector', 'Get-AzSecurityInsightsIncident', 'Get-AzSecurityInsightsIncidentComment', 'New-AzSecurityInsightsAlertRule', 'New-AzSecurityInsightsAlertRuleAction', 'New-AzSecurityInsightsBookmark', 'New-AzSecurityInsightsDataConnector', 'New-AzSecurityInsightsIncident', 'New-AzSecurityInsightsIncidentComment', 'Remove-AzSecurityInsightsAlertRule', 'Remove-AzSecurityInsightsAlertRuleAction', 'Remove-AzSecurityInsightsBookmark', 'Remove-AzSecurityInsightsDataConnector', 'Remove-AzSecurityInsightsIncident', '*'
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
