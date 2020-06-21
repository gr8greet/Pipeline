Get-Help Get-Process -Parameter * | Where-Object {$_.pipelineInput -Like 'true*'} | Select-Object Name, PipelineInput
What does the $ _ mean in the following Windows PowerShell expression?
Get-Service | Where-Object { $_.Status –eq "Stopped" }
c. Current item in the pipeline
The $_ automatically created variable is used as a shorthand method for iterating through each object in a collection. Actually, the $_ shortcut is synonymous with the $PSItem automatic variable. Therefore, we can rewrite the previous statement like this:
Get-Service | Where-Object { $PSItem.Status –eq "Stopped" }

