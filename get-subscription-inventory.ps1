# get-subscription-inventory.ps1
# Reads all resources in the selected subscription and writes the data to a CSV file.
# atwork.at, TP, 25.02.2019
$result = "C:\Temp\result.csv" 

"SubscriptionName,SubscriptionId,Resource,Name,ResourceGroupName,ResourceId" `
		| out-file $result -encoding ascii

# Loop through the resources and add to the output file
ForEach ($resource in Get-AzResource) 
{
	$AzureSubscription.Name + "," + `
		$AzureSubscription.SubscriptionId + "," + `
		$resource.ResourceType + "," + `
		$resource.Name + "," + `
		$resource.ResourceGroupName + "," + `
		$resource.ResourceId `
		| out-file $result -encoding ascii -append
}

Write-Output "Check $result"
