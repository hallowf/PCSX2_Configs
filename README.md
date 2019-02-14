## PCSX2 Configurations
1. Why did I do this?
  * To automate [this](https://forums.pcsx2.net/Thread-HOWTO-configure-PCSX2-to-run-different-games-from-shortcuts)


## Usage:

### Missing files:
The files described below are not included in this project:
  * fart.exe
  * pcsx2.exe
  * GSdx.fx
  * LilyPad.ini

I'm not sure if I can redistribute them so I won't, you can obtain them in your installation folder except for [fart.exe](https://sourceforge.net/projects/fart-it/)

Here is their original location
  * pcsx2.exe => root folder of installation
  * GSdx.fx => shaders folder in root
  * LilyPad.ini => inis folder in root

Please do everything by order
  1. First make sure you checked [Config](#config)
  2. Follow the exact order of [Running](#running)

### Config
  Make sure your directory structure is as described below:
  ```
  AnyFolder
    |
    Configs <-- this project
    |
    Games <- isos folder
    |
    Shared <- you will need to create this
    |  |
    |  Bios <- your bios folder
    |  |
    |  Plugins <- your plugins
    |  |
    |  memcards <- you can put this here it's completely optional
    |
    PCSX-1.4.0 <- PCSX2 program (avoid spaces, if it has, rename it)
```
### Running
  1. Run set_envs.cmd (Make sure you provide the correct details)
  2. Go to Games/Game and paste the [templates]() with the respective names:
    * PCSX2_ui.ini.template => EX: Games\\Jak1\\inis\\PCSX2_ui.ini
    * pcsx2.reg.template => EX: Games\\Jak1\\pcsx2.reg
  3. Run fart.bat

### Updates:
I won't be committing more configs to this github repo since there are a lot of games to cover but [here](https://mega.nz/#F!mKZl0QYa!ynfHAmxUSWUm1CQ_L5ENEQ) is a link to a mega folder with more game presets

### Make your own:
1. Copy one of the existing cmd scripts like Jak1.cmd (Name it to whateveryouwant.cmd)
2. Rename PCSX_GAME=Jak1.iso => PCSX_GAME=YourGame.iso (*make it simple avoid spaces and weird characters*)
2. Create a new game folder
3. Copy the [templates](#running) to the new folder
4. Copy everything from you PCSX2 installation except Plugins and Bios \**if you have them there*



## The variables
1. set_envs.bat
  * CONFIG_SCRIPTS_DIR => scripts directory containing scripts for each game
  * PCSX_BASE_DIR => pcsx2 root directory
  * PCSX_USER_GAMES => Games folder
  * PCSX_SHARED_DIR => Shared folder
  * PCSX_MAIN_EXE => pcsx2.exe main executable
  * SHARED_MEMCARDS_FOLDER => Location of your memcards (C:\\users\\\\user\\Documents\\PCSX2\\memcards)
  * PCSX_USER_CONFIGS => Games presets folder (EX: Configs\\Games\\Jak1)

2. game.cmd
  * PCSX_GAME => iso name
  * GAME_ISO => iso absolute path
  * GAME_CONFIG => absolute path of game preset
  * CONFIG_INIS => inis folder abs path
  * BASE_DIR2 => absolute path of game preset with \*2\\


## Notes:
1. Software version : PCSX2 v1.5.0-dev-2948-gdabc99f46
2. Make sure you are naming everything correctly
  * Games should be game.iso and they should be in the directory describe in the [config](#config)
  * The same applies for scripts and .ini files
3. The directories and their respective naming are important
  * This is not magic it simply uses environment variables to automate more parts of the process, these same variables are specific and set accordingly so for convenience simplify everything


## Observations:

1. AMD drivers have poor performance with OpenGL so it is out of question to use for now
2. Multi Threaded microVU1 always seems to help
3. Software mode always seems to fix texture issues but it does not allow to change the resolution and performance is poor
4. GS SSE4 seems to be the most stable*ish gs plugin **Performance of the plugin is most definitely associated with GPU and CPU, some might behave differently...**

## My system specs:
  * OS: Windows 7 Ultimate
  * CPU: AMD FX-6300
  * RAM: 8GB KINGSTON DDR3 1866 cas10
  * MOBO: MSI 970 GAMING
  * GPU: ASUS RX460
  * POWER SUPPLY: EVGA 600W 80+ BRONZE
  * BOOT DRIVE: KINGSTON SSD 120GB
  * STORAGE DRIVES: \*2 WESTERN DIGITAL 500GB RAID 0
