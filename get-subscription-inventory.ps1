# Get all resources in the selected subscription
$result = "C:\Temp\PS\result.csv" 

"SubscriptionName,SubscriptionId,Resource,Name,ResourceGroupName,ResourceId" `
		| out-file $OutFilePath -encoding ascii

# Loop through the resources and add to the output file
$resources =  Get-AzResource
ForEach ($resource in $resources) 
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
