@echo off
set PCSX_GAME=Jak1.iso
set GAME_ISO=%PCSX_USER_GAMES%\%PCSX_GAME%
echo iso is %GAME_ISO%
set GAME_CONFIG=%PCSX_USER_CONFIGS%\Games\Jak1
echo User Config is %GAME_CONFIG%
IF DEFINED SHARED_MEMCARDS_FOLDER (
  fsutil reparsepoint query "%GAME_CONFIG%\memcards\" | find "Symbolic Link" >nul && echo symbolic link found on %GAME_CONFIG%\memcards || mklink /D %GAME_CONFIG%\memcards %SHARED_MEMCARDS_FOLDER%
) ELSE IF NOT EXIST %GAME_CONFIG%\memcards (
  echo you will need a memcards folder at %GAME_CONFIG%\memcards
  echo you can create a shortcut to another folder with right click
)
set CONFIG_INIS=%GAME_CONFIG%\inis\
echo Inis folder %CONFIG_INIS%
set BASE_DIR2=%GAME_CONFIG:\=\\%
echo Game dir *2/ %BASE_DIR2%
