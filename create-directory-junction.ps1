$my_documents = [Environment]::GetFolderPath("MyDocuments")

cmd /c mklink /J "$my_documents/Electronic Arts" "$my_documents/saved-game-files/Electronic Arts"

