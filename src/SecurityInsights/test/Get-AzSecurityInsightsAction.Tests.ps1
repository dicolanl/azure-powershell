$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzSecurityInsightsAction.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-AzSecurityInsightsAction' {
    It 'List' -skip {
    
    $AlertRuleId = New-Guid
	$ActionId = New-Guid
	$ActionId2 = New-Guid
	$LogicAppResourceId = "/subscriptions/1c61ccbf-70b3-45a3-a1fb-848ce46d70a6/resourceGroups/ndicola-azsposh/providers/Microsoft.Logic/workflows/Block-AADUser"
	$TriggerUri = "https://prod-08.eastus.logic.azure.com:443/workflows/854f1fc04f50415f83a359463dd60e8b/triggers/When_a_response_to_an_Azure_Sentinel_alert_is_triggered/paths/invoke?api-version=2018-07-01-preview&sp=%2Ftriggers%2FWhen_a_response_to_an_Azure_Sentinel_alert_is_triggered%2Frun&sv=1.0&sig=D7IHsTelJf8XFdhefU6mFRYjnHaa0oHkY_xWC_wW_Vs"
	$LogicAppResourceId2 = "/subscriptions/1c61ccbf-70b3-45a3-a1fb-848ce46d70a6/resourceGroups/ndicola-azsposh/providers/Microsoft.Logic/workflows/Get-MDATPInvestigationPackage"
	$TriggerUri2 = "https://prod-11.eastus.logic.azure.com:443/workflows/9f824303d57e4f00bea47052e4318d1b/triggers/When_a_response_to_an_Azure_Sentinel_alert_is_triggered/paths/invoke?api-version=2018-07-01-preview&sp=%2Ftriggers%2FWhen_a_response_to_an_Azure_Sentinel_alert_is_triggered%2Frun&sv=1.0&sig=2cGZz7eu3Y437r3LRHpkSFUTmD0X15XXP7uiW5_aLaA"
	
	#Create Alert Rule
	$alertRule = New-AzSentinelAlertRule -ResourceGroupName (Get-TestResourceGroupName) -WorkspaceName (Get-TestWorkspaceName) -AlertRuleId $AlertRuleId -Scheduled -Enabled -DisplayName "PoshModuleTest" -Severity Low -Query "SecurityAlert | take 1" -QueryFrequency (New-TimeSpan -Hours 5) -QueryPeriod (New-TimeSpan -Hours 5) -TriggerThreshold 10
	#Create Alert Rule Action
	$action = New-AzSentinelAlertRuleAction -ResourceGroupName (Get-TestResourceGroupName) -WorkspaceName (Get-TestWorkspaceName) -ActionId $ActionId -AlertRuleId ($alertRule.Name) -LogicAppResourceId $LogicAppResourceId -TriggerUri $TriggerUri
	#Create Alert Rule Action
	$action2 = New-AzSentinelAlertRuleAction -ResourceGroupName (Get-TestResourceGroupName) -WorkspaceName (Get-TestWorkspaceName) -ActionId $ActionId2 -AlertRuleId ($alertRule.Name) -LogicAppResourceId $LogicAppResourceId2 -TriggerUri $TriggerUri2
	
	#Get Alert Rule Actions
    $actions = Get-AzSentinelAlertRuleAction -ResourceGroupName (Get-TestResourceGroupName) -WorkspaceName (Get-TestWorkspaceName) -AlertRuleId ($alertRule.Name)
    }
}
