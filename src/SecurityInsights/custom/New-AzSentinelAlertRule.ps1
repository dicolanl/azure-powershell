function New-AzSentinelAlertRule {
    [outputType([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.IAlertRule])]
    [CmdletBinding(DefaultParameterSetName = 'Scheduled', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
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
        ${RuleId},

        [Parameter(ParameterSetName = "Fusion", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Fusion Alert Rule Type.
        ${Fusion},

        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # MicrosoftSecurityIncidentCreation Alert Rule Type.
        ${MicrosoftSecurityIncidentCreation},

        [Parameter(ParameterSetName = "Scheduled", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Scheduled Alert Rule Type.
        ${Scheduled},
        
        [Parameter(ParameterSetName = "Fusion", Mandatory)]
        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation")]
        [Parameter(ParameterSetName = "Scheduled")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # Alert Rule Template Name.
        ${AlertRuleTemplateName},

        [Parameter(ParameterSetName = "Fusion")]
        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation")]
        [Parameter(ParameterSetName = "Scheduled")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Enable the Alert Rule.
        ${Enabled},

        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation", Mandatory)]
        [Parameter(ParameterSetName = "Scheduled", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # Alert Rule Display Name.
        ${DisplayName},

        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        [ValidateSet("Azure Active Directory Identity Protection", "Azure Advanced Threat Protection", "Azure Security Center", "Azure Security Center for IoT", "Microsoft Cloud App Security", "Microsoft Defender Advanced Threat Protection", "Office 365 Advanced Threat Protection")]
        # Data Connector Logs Data Type.
        ${ProductFilter},

        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation")]
        [Parameter(ParameterSetName = "Scheduled")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # Alert Rule Description.
        ${Description},

        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Collections.IList]
        # Alert Names to exclude.
        ${DisplayNamesExcludeFilter},

        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Collections.IList]
        # Alert Names to include.
        ${DisplayNamesFilter},

        [Parameter(ParameterSetName = "MicrosoftSecurityIncidentCreation")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Collections.IList]
        # Alert Severities to include.
        ${SeveritiesFilter},

        [Parameter(ParameterSetName = "Scheduled")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = 'New-TimeSpan -Hours 1')]
        [System.TimeSpan]
        # How long to supress futher incidents.
        ${SuppressionDuration},

        [Parameter(ParameterSetName = "Scheduled")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Enabled incident suppression.
        ${SuppressionEnabled},

        [Parameter(ParameterSetName = "Scheduled")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # Query to run.
        ${Query},

        [Parameter(ParameterSetName = "Scheduled", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.TimeSpan]
        # How often to run the query.
        ${QueryFrequency},

        [Parameter(ParameterSetName = "Scheduled", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.TimeSpan]
        # How long to look back in data.
        ${QueryPeriod},

        [Parameter(ParameterSetName = "Scheduled", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        [ValidateSet("High", "Medium", "Low", "Informational")]
        # Incident Severity.
        ${Severity},

        [Parameter(ParameterSetName = "Scheduled")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Collections.IList]
        # MITRE Tactics.
        ${Tactics},

        [Parameter(ParameterSetName = "Scheduled")]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.TriggerOperator]
        [ValidateSet("Equal", "GreaterThan", "LessThan", "NotEqual")]
        # Trigger Operator.
        ${TriggerOperator},

        [Parameter(ParameterSetName = "Scheduled", Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.Int32]
        # Trigger Threshold.
        ${TriggerThreshold},

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
            if($PSBoundParameters['Fusion']) { 
                    $alertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.FusionAlertRule]::new()

                    $alertRule.Kind = "Fusion"
                    $alertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplateName']
                    $null = $PSBoundParameters.Remove('AlertRuleTemplateName')

                    $alertRule.Enabled = $PSBoundParameters['Enabled']
                    $null = $PSBoundParameters.Remove('Enabled')

                    $PSBoundParameters.Remove('Fusion')
                }
                if($PSBoundParameters['MicrosoftSecurityIncidentCreation']) { 
                    $alertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.MicrosoftSecurityIncidentCreationAlertRule]::new()

                    $alertRule.Kind = "MicrosoftSecurityIncidentCreation"

                    $alertRule.DisplayName = $PSBoundParameters['DisplayName']
                    $null = $PSBoundParameters.Remove('DisplayName')

                    $alertRule.Enabled = $PSBoundParameters['Enabled']
                    $null = $PSBoundParameters.Remove('Enabled')

                    $alertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplateName']
                    $null = $PSBoundParameters.Remove('AlertRuleTemplateName')

                    $alertRule.ProductFilter = $PSBoundParameters['ProductFilter']
                    $null = $PSBoundParameters.Remove('ProductFilter')
                    
                    $alertRule.Description = $PSBoundParameters['Description']
                    $null = $PSBoundParameters.Remove('Description')

                    $alertRule.DisplayNamesExcludeFilter = $PSBoundParameters['DisplayNamesExcludeFilter']
                    $null = $PSBoundParameters.Remove('DisplayNamesExcludeFilter')

                    $alertRule.DisplayNamesFilter = $PSBoundParameters['DisplayNamesFilter']
                    $null = $PSBoundParameters.Remove('DisplayNamesFilter')

                    $alertRule.SeveritiesFilter = $PSBoundParameters['SeveritiesFilter']
                    $null = $PSBoundParameters.Remove('SeveritiesFilter')

                    $PSBoundParameters.Remove('MicrosoftSecurityIncidentCreation')
                }
                if($PSBoundParameters['Scheduled']) { 
                    $alertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.ScheduledAlertRule]::new()

                    $alertRule.Kind = "Scheduled"

                    $alertRule.DisplayName = $PSBoundParameters['DisplayName']
                    $null = $PSBoundParameters.Remove('DisplayName')

                    $alertRule.Enabled = $PSBoundParameters['Enabled']
                    $null = $PSBoundParameters.Remove('Enabled')

                    $alertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplateName']
                    $null = $PSBoundParameters.Remove('AlertRuleTemplateName')

                    $alertRule.SuppressionDuration = $PSBoundParameters['SuppressionDuration']
                    $null = $PSBoundParameters.Remove('SuppressionDuration')

                    $alertRule.SuppressionEnabled = $PSBoundParameters['SuppressionEnabled']
                    $null = $PSBoundParameters.Remove('SuppressionEnabled')

                    $alertRule.Description = $PSBoundParameters['Description']
                    $null = $PSBoundParameters.Remove('Description')

                    $alertRule.Query = $PSBoundParameters['Query']
                    $null = $PSBoundParameters.Remove('Query')

                    $alertRule.QueryFrequency = $PSBoundParameters['QueryFrequency']
                    $null = $PSBoundParameters.Remove('QueryFrequency')

                    $alertRule.QueryPeriod = $PSBoundParameters['QueryPeriod']
                    $null = $PSBoundParameters.Remove('QueryPeriod')

                    $alertRule.Severity = $PSBoundParameters['Severity']
                    $null = $PSBoundParameters.Remove('Severity')

                    $alertRule.Tactics = $PSBoundParameters['Tactics']
                    $null = $PSBoundParameters.Remove('Tactics')

                    $alertRule.TriggerOperator = $PSBoundParameters['TriggerOperator']
                    $null = $PSBoundParameters.Remove('TriggerOperator')

                    $alertRule.TriggerThreshold = $PSBoundParameters['TriggerThreshold']
                    $null = $PSBoundParameters.Remove('TriggerThreshold')

                    $PSBoundParameters.Remove('AzureSecurityCenter')
                }
            $null = $PSBoundParameters.Add('alertRule', $alertRule)
            
            Write-Debug $PSBoundParameters.Keys
            Write-Debug $PSBoundParameters.Values
            Az.SecurityInsights.internal\New-AzSentinelAlertRule @PSBoundParameters
        }
        catch {
            throw
        }
    }
}