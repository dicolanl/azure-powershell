---
external help file:
Module Name: Az.SecurityInsights
online version: https://docs.microsoft.com/en-us/powershell/module/az.securityinsights/new-azsecurityinsightsbookmark
schema: 2.0.0
---

# New-AzSecurityInsightsBookmark

## SYNOPSIS
Creates or updates the bookmark.

## SYNTAX

```
New-AzSecurityInsightsBookmark -Id <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-Created <DateTime>] [-CreatedByObjectId <String>] [-DisplayName <String>]
 [-Etag <String>] [-IncidentInfoIncidentId <String>] [-IncidentInfoRelationName <String>]
 [-IncidentInfoSeverity <CaseSeverity>] [-IncidentInfoTitle <String>] [-Label <String[]>] [-Note <String>]
 [-Query <String>] [-QueryResult <String>] [-Updated <DateTime>] [-UpdatedByObjectId <String>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates the bookmark.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -Created
The time the bookmark was created

```yaml
Type: System.DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreatedByObjectId
The object id of the user.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: System.Management.Automation.PSObject
Parameter Sets: (All)
Aliases: AzureRMContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayName
The display name of the bookmark

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Etag
Etag of the azure resource

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
Bookmark ID

```yaml
Type: System.String
Parameter Sets: (All)
Aliases: BookmarkId

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncidentInfoIncidentId
Incident Id

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncidentInfoRelationName
Relation Name

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncidentInfoSeverity
The severity of the incident

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.CaseSeverity
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncidentInfoTitle
The title of the incident

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Label
List of labels relevant to this bookmark

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Note
The notes of the bookmark

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
The query of the bookmark.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryResult
The query result of the bookmark.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group within the user's subscription.
The name is case insensitive.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Azure subscription ID

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Get-AzContext).Subscription.Id
Accept pipeline input: False
Accept wildcard characters: False
```

### -Updated
The last time the bookmark was updated

```yaml
Type: System.DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdatedByObjectId
The object id of the user.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceName
The name of the workspace.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api202001.IBookmark

## NOTES

ALIASES

## RELATED LINKS

