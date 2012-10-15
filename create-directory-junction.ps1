$my_documents = [Environment]::GetFolderPath("MyDocuments")

Write-Host Dead Space
cmd /c mklink /J "$my_documents/Electronic Arts" "$my_documents/saved-game-files/Electronic Arts"

Write-Host Dead Space 2
cmd /c mklink /J "$my_documents/EA Games" "$my_documents/saved-game-files/EA Games"

Write-Host XCOM - Enemy Unknown
$xcom_path = "$my_documents/My Games/XCOM - Enemy Unknown/XComGame"
if ((Test-Path -path $xcom_path) -ne $True)
{
	New-Item -ItemType directory -Path $xcom_path
}
cmd /c mklink /J "$xcom_path/SaveData" "$my_documents/saved-game-files/XCOM - Enemy Unknown/SaveData"

cmd /c pause
