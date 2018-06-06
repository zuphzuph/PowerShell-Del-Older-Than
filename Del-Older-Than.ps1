$Path = "Path to delete from here."
$DaysBack = "-X" 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($DaysBack)
Get-ChildItem -Path $Path -Include *.* -Recurse -Exclude web.config,.htaccess |` 
Where-Object {$_.LastWriteTime -lt $DatetoDelete} |` 
Remove-Item -ErrorAction SilentlyContinue -Recurse -Force
exit
