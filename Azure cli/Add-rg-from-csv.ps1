<#
.SYNOPSIS
    Create the resource groups based on the name and location columns reading from csv file.
    Script supports both Username/Password and SPN/Secret Logins with flag $spnLogin.
    -  If $spnLogin $True, Sets SPN login and Id/Secret should be passed.
    -  If $spnLogin $False, Sets Username login and Username/Password should be passed.
.EXAMPLE
    PS> .\az_create_resourcegroup.ps1 -filepath 'az_create_resourccegroup.csv' -subscriptionId <subscription_id> -spnLogin $true -loginName '<application_id>' -secret '<secret>' -tenantId '<tenantId>'
    PS> .\az_create_resourcegroup.ps1 -filepath 'az_create_resourccegroup.csv' -subscriptionId <subscription_id> -spnLogin $false -loginName '<username>' -secret '<password>' -tenantId '<tenantId>'
    
.NOTES
    File Name: az_create_resourcegroup.ps1
    Author:    Veereshkumar
    Date:      10-Oct-21
    PS_Version: 5.1
    Az_Module_Version: 6.4.0 
#>

# Login to Azure 
    Write-Host ("### Logging into Azure using SPN ### `n") -ForegroundColor DarkGray
    Connect-AzAccount
    Set-AzContext -Subscription "3cb5f95d-a9e4-4ca3-ba23-800b6eb3cb45"
    $names = (Import-Csv -Path "C:\Users\RobertThomas\OneDrive - Valto\Documents\GitHub\MS365-Azure\Azure cli\Azureresourcegroups.csv") 

# Create ResourceGroups
    foreach($n in $names){

        Write-Host ("### Creating the resourceGroup: '{0}' with location: {1} ### `n" -f $n.rgname, $n.location) -ForegroundColor Yellow

        New-AzResourceGroup -Name $n.rgname -Location $n.location -ErrorAction Stop | Out-Null

        if($?){
          Write-Host ("### ResourceGroup: {0} created Successfully ### `n" -f $n.rgname) -ForegroundColor Green
        } else {
            Write-Host ("### ResourceGroup: {0} creation failed ### `n" -f $n.rgname) -ForegroundColor DarkRed
        }
    }
 



