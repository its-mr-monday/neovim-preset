

#Directory is ~/AppData/Local/nvim

# Get the current directory

$path = $PSScriptRoot
$currentDir = Get-Location
Set-Location $path
$nvimConfigPath = "$env:USERPROFILE\AppData\Local\nvim"

#Step 1 remove anything in the old directory
echo "Applying neovim configuration"
mkdir $nvimConfigPath -Force
Remove-Item $nvimConfigPath\* -Recurse -Force
Set-Location $nvimConfigPath
cp -r lua $nvimConfigPath
cp init.lua $nvimConfigPath
echo "Done"
Set-Location $currentDir
exit 0
