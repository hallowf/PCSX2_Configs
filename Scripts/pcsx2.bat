REM SET REGISTRY ENTRIES FOR CUSTOMIZED PCSX2
start regedit.exe /s "%GAME_CONFIG%\pcsx2.reg"

REM START PCSX2
echo game config %GAME_CONFIG%
start %GAME_CONFIG%\pcsx2.exe "%GAME_ISO%"
