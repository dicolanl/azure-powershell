function RandomString([bool]$allChars, [int32]$len) {
    if ($allChars) {
        return -join ((33..126) | Get-Random -Count $len | % {[char]$_})
    } else {
        return -join ((48..57) + (97..122) | Get-Random -Count $len | % {[char]$_})
    }
}
$env = @{}
function setupEnv() {
    # Preload subscriptionId and tenant from context, which will be used in test
    # as default. You could change them if needed.
    $env.SubscriptionId = (Get-AzContext).Subscription.Id
    $env.Tenant = (Get-AzContext).Tenant.Id
    #Resource Group
    $RGName = "azp-sentinel-"+ (RandomString -allChars $false -len 6)
    $null = $env.Add("RGName", $RGName)
    #Location
    $Location = "WestUS"
    $null = $env.Add("Location", $Location)
    #Workspace
    $WorkspaceName = "azp-sentinel-ws-"+ (RandomString -allChars $false -len 6)
    $null = $env.Add("WorkspaceName", $WorkspaceName)

    # Added Content
    Write-Host -ForegroundColor Blue "Deploying resourceGroup: "$RGName
    $createRG = New-AzResourceGroup -Name ($env.RGName) -Location ($env.Location)
    if ($createRG.ProvisioningState -eq "Succeeded") {
        Write-Host -ForegroundColor Green "RG created successfully"
    }
    else {
        Write-Host -ForegroundColor Red "RG failed to create"
        break
    }

    # Deploy Log A workspace and Azure Sentinel
    Write-Host -ForegroundColor Blue "Deploying workspace: "$WorkspaceName
    $workspaceParams = Get-Content .\test\deploymentTemplates\workspace\azuredeploy.parameters.json | ConvertFrom-Json
    $workspaceParams.parameters.workspaceName.value = $WorkspaceName
    Set-Content -Path .\test\deploymentTemplates\workspace\azuredeploy.parameters.json -Value (ConvertTo-Json $workspaceParams)
    $templateFile = Get-ChildItem .\test\deploymentTemplates\workspace\azuredeploy.json
    $templateParameterFile = Get-ChildItem .\test\deploymentTemplates\workspace\azuredeploy.parameters.json
    $createWS = New-AzDeployment -Name workspace -ResourceGroupName $RGName -Mode Incremental -TemplateFile ($templateFile.FullName) -TemplateParameterFile ($templateParameterFile.FullName)
    if ($createWS.ProvisioningState -eq "Succeeded") {
        Write-Host -ForegroundColor Green "Workspace created successfully"
    }
    else {
        Write-Host -ForegroundColor Red "Workspace failed to create"
        break
    }

    #create Sentinel items for testing
    #Data Connector

    #Incident

    #Bookmark

    #Alert Rule

    #Alert Rule Actions - Logic App
    #LA1
    $LogicApp1 = "azp-as-la-"+ (RandomString -allChars $false -len 6)
    $null = $env.Add("LogicApp1", $LogicApp1)
	$LogicAppResourceId1 = "/subscriptions/"+$env.SubscriptionId+"/resourceGroups/"+$env.RGName+"/providers/Microsoft.Logic/workflows/"+$env.LogicApp1
    $null = $env.Add("LogicAppResourceId1", $LogicAppResourceId1)
    $LogicAppTriggerUrl1 = Invoke-RestMethod -Uri POST "https://management.azure.com/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/listCallbackUrl?api-version=2016-06-01
    $LogicApp2 = "azp-as-la-"+ (RandomString -allChars $false -len 6)
    $null = $env.Add("LogicApp2", $LogicApp2)
    $LogicAppResourceId2 = "/subscriptions/"+$env.SubscriptionId+"/resourceGroups/"+$env.RGName+"/providers/Microsoft.Logic/workflows/"+$env.LogicApp2
    $null = $env.Add("LogicAppResourceId2", $LogicAppResourceId2)

    $TriggerUri = "https://prod-08.eastus.logic.azure.com:443/workflows/854f1fc04f50415f83a359463dd60e8b/triggers/When_a_response_to_an_Azure_Sentinel_alert_is_triggered/paths/invoke?api-version=2018-07-01-preview&sp=%2Ftriggers%2FWhen_a_response_to_an_Azure_Sentinel_alert_is_triggered%2Frun&sv=1.0&sig=D7IHsTelJf8XFdhefU6mFRYjnHaa0oHkY_xWC_wW_Vs"
	$TriggerUri2 = "https://prod-11.eastus.logic.azure.com:443/workflows/9f824303d57e4f00bea47052e4318d1b/triggers/When_a_response_to_an_Azure_Sentinel_alert_is_triggered/paths/invoke?api-version=2018-07-01-preview&sp=%2Ftriggers%2FWhen_a_response_to_an_Azure_Sentinel_alert_is_triggered%2Frun&sv=1.0&sig=2cGZz7eu3Y437r3LRHpkSFUTmD0X15XXP7uiW5_aLaA"
	

    # For any resources you created for test, you should add it to $env here.
    $envFile = 'env.json'
    if ($TestMode -eq 'live') {
        $envFile = 'localEnv.json'
    }
    set-content -Path (Join-Path $PSScriptRoot $envFile) -Value (ConvertTo-Json $env)
}
function cleanupEnv() {
    # Clean resources you create for testing
    #Remove-AzResourceGroup -Name $env.resourceGroup
}

