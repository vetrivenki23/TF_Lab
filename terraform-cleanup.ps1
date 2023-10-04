# Delete .terraform* files and directories
Get-ChildItem -Path . -Recurse -Filter .terraform* | ForEach-Object {
    Write-Host "Deleting $($_.FullName)"
    Remove-Item -Path $_.FullName -Force -Recurse
}

# Delete terraform.tfstate* files
Get-ChildItem -Path . -Recurse -Filter terraform.tfstate* | ForEach-Object {
    Write-Host "Deleting $($_.FullName)"
    Remove-Item -Path $_.FullName -Force
}
