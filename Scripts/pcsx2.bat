REM SET REGISTRY ENTRIES FOR CUSTOMIZED PCSX2
start regedit.exe /s "%GAME_CONFIG%\pcsx2.reg"

REM START PCSX2
cd %GAME_CONFIG%
start pcsx2.exe "%GAME_ISO%"
