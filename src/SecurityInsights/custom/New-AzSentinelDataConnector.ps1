function New-AzSentinelDataConnector {
    [outputType([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.IDataConnector])]
    [CmdletBinding(DefaultParameterSetName = 'AzureActiveDirectory', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param (
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(Get-AzContext).Subscription.Id')]
        [System.String]
        # Gets subscription credentials which uniquely identify Microsoft Azure subscription.
        # The subscription ID forms part of the URI for every service call.
        ${SubscriptionId},

        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The name of the resource group containing the workspace.
        ${ResourceGroupName},

        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The name of the the workspace.
        ${WorkspaceName},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(New-Guid).Guid')]
        [System.String]
        # The name of the the data connector.
        ${DataConnectorId},

        [Parameter(ParameterSetName = "AzureActiveDirectory", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # AzureActiveDirectory Data Connector Type.
        ${AzureActiveDirectory},

        [Parameter(ParameterSetName = "AzureAdvancedThreatProtection", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # AzureAdvancedThreatProtection Data Connector Type.
        ${AzureAdvancedThreatProtection},

        [Parameter(ParameterSetName = "AzureSecurityCenter", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # AzureSecurityCenter Data Connector Type.
        ${AzureSecurityCenter},
        
        [Parameter(ParameterSetName = "AmazonWebServicesCloudTrail", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # AmazonWebServicesCloudTrail Data Connector Type.
        ${AmazonWebServicesCloudTrail},

        [Parameter(ParameterSetName = "MicrosoftCloudAppSecurity", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # MicrosoftCloudAppSecurity Data Connector Type.
        ${MicrosoftCloudAppSecurity},

        [Parameter(ParameterSetName = "MicrosoftDefenderAdvancedThreatProtection", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # MicrosoftDefenderAdvancedThreatProtection Data Connector Type.
        ${MicrosoftDefenderAdvancedThreatProtection},

        [Parameter(ParameterSetName = "Office365", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Office365 Data Connector Type.
        ${Office365},

        [Parameter(ParameterSetName = "ThreatIntelligence", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # ThreatIntelligence Data Connector Type.
        ${ThreatIntelligence},

        [Parameter(ParameterSetName = "AzureActiveDirectory", DontShow)]
        [Parameter(ParameterSetName = "AzureAdvancedThreatProtection", DontShow)]
        [Parameter(ParameterSetName = "MicrosoftCloudAppSecurity", DontShow)]
        [Parameter(ParameterSetName = "MicrosoftDefenderAdvancedThreatProtection", DontShow)]
        [Parameter(ParameterSetName = "Office365", DontShow)]
        [Parameter(ParameterSetName = "ThreatIntelligence", DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(Get-AzContext).Tenant.Id')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # Tenant ID for certain data types.  can only using local tenantid.
        ${TenantId},

        [Parameter(ParameterSetName = "AzureActiveDirectory", Mandatory)]
        [Parameter(ParameterSetName = "AzureAdvancedThreatProtection", Mandatory)]
        [Parameter(ParameterSetName = "AzureSecurityCenter", Mandatory)]
        [Parameter(ParameterSetName = "MicrosoftCloudAppSecurity", Mandatory)]
        [Parameter(ParameterSetName = "MicrosoftDefenderAdvancedThreatProtection", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        [ValidateSet("Enabled", "Disabled")]
        # Data Connector Alerts Data Type.
        ${Alerts},

        [Parameter(ParameterSetName = "AzureSecurityCenter", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # AzureSecurityCenter Data Connector SubsctiptionId.
        ${ASCSubscriptionId},

        [Parameter(ParameterSetName = "AmazonWebServicesCloudTrail", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # AmazonWebServicesCloudTrail Data Connector Role ARN.
        ${AwsRoleArn},

        [Parameter(ParameterSetName = "AmazonWebServicesCloudTrail", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        [ValidateSet("Enabled", "Disabled")]
        # Data Connector Logs Data Type.
        ${Logs},

        [Parameter(ParameterSetName = "MicrosoftCloudAppSecurity", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        [ValidateSet("Enabled", "Disabled")]
        # Data Connector Discovery Logs Data Type.
        ${DiscoveryLogs},

        [Parameter(ParameterSetName = "Office365", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        [ValidateSet("Enabled", "Disabled")]
        # Data Connector Discovery Exchange Data Type.
        ${Exchange},

        [Parameter(ParameterSetName = "Office365", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        [ValidateSet("Enabled", "Disabled")]
        # Data Connector Discovery SharePoint Data Type.
        ${SharePoint},

        [Parameter(ParameterSetName = "ThreatIntelligence", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        [ValidateSet("Enabled", "Disabled")]
        # Data Connector Discovery Indicators Data Type.
        ${Indicators},

        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )

    process {
        try {
            if($PSBoundParameters['AzureActiveDirectory']) { 
                    $dataConnector = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.AadDataConnector]::new()

                    $dataConnector.Kind = "AzureActiveDirectory"

                    $dataConnector.AlertState = $PSBoundParameters['Alerts'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('Alerts')

                    $dataConnector.TenantId = (Get-AzContext).Tenant.Id
                    $null = $PSBoundParameters.Remove('TenantId')

                    $PSBoundParameters.Remove('AzureActiveDirectory')
                }
                if($PSBoundParameters['AzureAdvancedThreatProtection']) { 
                    $dataConnector = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.AatpDataConnector]::new()

                    $dataConnector.Kind = "AzureAdvancedThreatProtection"

                    $dataConnector.AlertState = $PSBoundParameters['Alerts'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('Alerts')

                    $dataConnector.TenantId = (Get-AzContext).Tenant.Id
                    $null = $PSBoundParameters.Remove('TenantId')

                    $PSBoundParameters.Remove('AzureAdvancedThreatProtection')
                }
                if($PSBoundParameters['AzureSecurityCenter']) { 
                    $dataConnector = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.AscDataConnector]::new()

                    $dataConnector.Kind = "AzureSecurityCenter"

                    $dataConnector.AlertState = $PSBoundParameters['Alerts'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('Alerts')

                    $dataConnector.SubscriptionId = $PSBoundParameters['ASCSubscriptionId']
                    $null = $PSBoundParameters.Remove('ASCSubscriptionId')

                    $PSBoundParameters.Remove('AzureSecurityCenter')
                }
                if($PSBoundParameters['AmazonWebServicesCloudTrail']) { 
                    $dataConnector = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.AwsCloudTrailDataConnector]::new()

                    $dataConnector.Kind = "AmazonWebServicesCloudTrail"

                    $dataConnector.LogState = $PSBoundParameters['Logs'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('Logs')

                    $dataConnector.AwsRoleArn = $PSBoundParameters['AwsRoleArn']
                    $null = $PSBoundParameters.Remove('AwsRoleArn')

                    $PSBoundParameters.Remove('AmazonWebServicesCloudTrail')
                }
                if($PSBoundParameters['MicrosoftCloudAppSecurity']) { 
                    $dataConnector = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.McasDataConnector]::new()

                    $dataConnector.Kind = "MicrosoftCloudAppSecurity"

                    $dataConnector.AlertState = $PSBoundParameters['Alerts'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('Alerts')

                    $dataConnector.DiscoveryLogState = $PSBoundParameters['DiscoveryLogs'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('DiscoveryLogs')

                    $dataConnector.TenantId = (Get-AzContext).Tenant.Id
                    $null = $PSBoundParameters.Remove('TenantId')

                    $PSBoundParameters.Remove('MicrosoftCloudAppSecurity')
                }
                if($PSBoundParameters['MicrosoftDefenderAdvancedThreatProtection']) { 
                    $dataConnector = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.MdatpDataConnector]::new()

                    $dataConnector.Kind = "MicrosoftDefenderAdvancedThreatProtection"

                    $dataConnector.AlertState = $PSBoundParameters['Alerts'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('Alerts')

                    $dataConnector.TenantId = (Get-AzContext).Tenant.Id
                    $null = $PSBoundParameters.Remove('TenantId')

                    $PSBoundParameters.Remove('MicrosoftDefenderAdvancedThreatProtection')
                }
                if($PSBoundParameters['Office365']) { 
                    $dataConnector = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.OfficeDataConnector]::new()

                    $dataConnector.Kind = "Office365"

                    $dataConnector.ExchangeState = $PSBoundParameters['Exchange'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('Exchange')

                    $dataConnector.SharePointState = $PSBoundParameters['SharePoint'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('SharePoint')

                    $dataConnector.TenantId = (Get-AzContext).Tenant.Id
                    $null = $PSBoundParameters.Remove('TenantId')

                    $PSBoundParameters.Remove('Office365')
                }
                if($PSBoundParameters['ThreatIntelligence']) { 
                    $dataConnector = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.TiDataConnector]::new()

                    $dataConnector.Kind = "ThreatIntelligence"

                    $dataConnector.IndicatorState = $PSBoundParameters['Indicators'].ToString().ToLower()
                    $null = $PSBoundParameters.Remove('Indicators')

                    $dataConnector.TenantId = (Get-AzContext).Tenant.Id
                    $null = $PSBoundParameters.Remove('TenantId')

                    $PSBoundParameters.Remove('ThreatIntelligence')
                }
            $null = $PSBoundParameters.Add('dataConnector', $dataConnector)
            
            Write-Verbose $PSBoundParameters.Keys
            Write-Verbose $PSBoundParameters.Values
            Az.SecurityInsights.internal\New-AzSentinelDataConnector @PSBoundParameters
        }
        catch {
            throw
        }
    }
}