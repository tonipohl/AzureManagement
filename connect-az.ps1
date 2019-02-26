# Connect to Azure
Connect-AzAccount

# Once signed in, use the Azure PowerShell cmdlets to access and manage resources in your subscription. 
Get-AzSubscription

# Select a subscription by name
Set-AzContext -Subscription '<myname>'

<#
See more about the PowerShell Az module at
https://docs.microsoft.com/en-us/powershell/azure/get-started-azureps?view=azps-1.3.0 
https://docs.microsoft.com/en-us/azure/cloud-shell/quickstart-powershell?view=azps-1.3.0#navigate-azure-resources
https://docs.microsoft.com/en-us/azure/cloud-shell/features#tools
#>
