
# Deploy Azure Sentinel

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FValtoIT%2FMS365-Azure%2Fmain%2FAzure%2520ARM%2520Templates%2FAzure-Sentinel%2Fazuredeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>
</a>

This template allows you to deploy Azure Sentinel to a new Log Analytics workspace or an existing one.

You would need to ensure your deployment targets to the corresponding resource group for existing Log Analytics workspace. Otherwise you would encounter Internal Server error when calling Azure RM deployment API.

```powershell
New-AzResourceGroupDeployment -ResourceGroupName "uks-monitor-rg" 
                              -TemplateParameterFile .\azuredeploy.parameters.json `
                              -TemplateFile .\azuredeploy.json `
```

- [Azure Sentinel Documentation](https://docs.microsoft.com/en-us/azure/sentinel/)




