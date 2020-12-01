$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'New-AzSentinelDataConnector.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'New-AzSentinelDataConnector' {
    It 'AzureActiveDirectory' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'MicrosoftDefenderAdvancedThreatProtection' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'MicrosoftCloudAppSecurity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'AzureSecurityCenter' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'AzureAdvancedThreatProtection' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'ThreatIntelligence' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Office365' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'AmazonWebServicesCloudTrail' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
