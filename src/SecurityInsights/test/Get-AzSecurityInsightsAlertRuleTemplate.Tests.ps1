$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzSecurityInsightsAlertRuleTemplate.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-AzSecurityInsightsAlertRuleTemplate' {
    It 'List'  {
        $AlertRuleTemplates = Get-AzSentinelAlertRuleTemplate -ResourceGroupName $env.RGName -WorkspaceName $env.WorkspaceName
        $AlertRuleTemplates.Count | Should -BeGreaterOrEqual 1
    }

    It 'Get' {
        $FusionAlertRule = Get-AzSentinelAlertRuleTemplate -ResourceGroupName $env.RGName -WorkspaceName $env.WorkspaceName | where {$_.Kind -eq "Fusion"}
        $AlertRuleTemplate = Get-AzSentinelAlertRuleTemplate -ResourceGroupName $env.RGName -WorkspaceName $env.WorkspaceName -Id $FusionAlertRule.Name
        $AlertRuleTemplate.Kind | Should -Be "Fusion"
    }

    It 'GetViaIdentity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
