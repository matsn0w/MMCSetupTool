param (
    [Parameter(Mandatory = $true)]
    [string]
    $Version
)

# build executable
& ".\tools\PS2EXE-GUI\ps2exe.ps1" -inputFile ".\MMCSetupTool.ps1" -outputFile ".\bin\MMCSetupTool.exe" -iconFile ".\tools\mmc.ico" -title "MMC Setup Tool" -company "Multimedia Center Veenendaal" -copyright "© 2020 Bart Scholtus" -version "$Version" -requireAdmin 

# zip the files
Compress-Archive -Path ".\bin\MMCSetupTool.exe", ".\assets" -CompressionLevel Fastest -DestinationPath ".\bin\MMCSetupTool.zip"
