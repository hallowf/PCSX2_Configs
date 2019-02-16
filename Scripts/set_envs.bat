@echo off
set CONFIG_SCRIPTS_DIR=%cd%
set /p PCSX_BASE_DIR=Enter pcsx2 root dir:
echo Dir set %PCSX_BASE_DIR%
set /p FART_EXE=Enter fart.exe location:
echo fart.exe set to %FART_EXE%
set /p PCSX_CURRENT_BIOS_NAME=Enter your bios name:
echo bios name set to %PCSX_CURRENT_BIOS_NAME%
set /p PCSX_USER_GAMES=Enter your games folder:
echo Games folder set %PCSX_USER_GAMES%
set /p PCSX_SHARED_DIR1=Enter your shared dir:
set PCSX_SHARED_DIR=%PCSX_SHARED_DIR1:\=\\%
echo Shared dir is %PCSX_SHARED_DIR%
set PCSX_MAIN_EXE=%PCSX_BASE_DIR%\pcsx2.exe
echo pcsx2.exe is %PCSX_MAIN_EXE%
set /p _sharememcards="Do you want to share memcards(yes|no): "
IF "%_sharememcards%" == "yes" (
  set /p SHARED_MEMCARDS_FOLDER=your memcards folder path:
  echo Set shared folder to %SHARED_MEMCARDS_FOLDER%
)
cd ..
set PCSX_USER_CONFIGS=%cd%\Games
echo user configs %PCSX_USER_CONFIGS%
cd %CONFIG_SCRIPTS_DIR%
