## PCSX2 Configurations
1. Why did I do this?
  * To automate [this](https://forums.pcsx2.net/Thread-HOWTO-configure-PCSX2-to-run-different-games-from-shortcuts)


## Usage:

### Missing files/folders AKA: Dependencies:
* The files described below are not included in this project:
  * fart.exe
  * pcsx2.exe
  * GSdx.fx
  * LilyPad.ini
  * GameIndex.dbf

I'm not sure if I can redistribute them so I won't, you can obtain them in your installation folder except for [fart.exe](https://sourceforge.net/projects/fart-it/)

Some other folders are also not included like logs, Langs, cheats, snaps, etc since those are specific to each user an you can obtain them from pcsx2's main folder

* Here is their original location:
  * pcsx2.exe => root folder of installation
  * GSdx.fx => shaders folder in root
  * LilyPad.ini => inis folder in root

Please do everything by order
  1. First make sure you checked [Config](#configuration)
  2. Follow the exact order of [Running](#running)

### Configuration
  Make sure your directory structure is as described below:
  ```
  AnyFolder
    |
    Configs <-- this project
    |  |
    |  manager.exe <- *if you use config manager
    |
    Games <- isos folder
    |
    Shared <- you will need to create this
    |  |
    |  Bios <- your bios folder
    |  |
    |  Plugins <- your plugins
    |  |
    |  memcards <- you can put this here it's completely optional however
    |
    PCSX-1.4.0 <- PCSX2 program (avoid spaces, if it has, rename it)
    |  |
    |  fart.exe <- Having fart.ex here helps if you use Config Manager
```

### Install

#### User

Download [this](https://github.com/hallowf/PCSX2_Configs/archive/master.zip) zip file, and place the contents of the zip in a folder called Configs as specified in [Configuration](#config)

#### Dev
Using git on windows:

```
cd AnyFolder

git clone https://github.com/hallowf/PCSX2_Configs Configs

py -3.7 -m pip install virtualenv

py -3.7 -m virtualenv venv

venv\Scripts\activate

pip install -r requirements.txt

python main.py --help


# Building

pyinstaller main.py

# Configure main.spec

pyinstaller --onefile main.spec

```

Or just download it as a zip, create the folder Configs and copy the contents of the zip inside

### Running

#### Config manager
[This](https://github.com/hallowf/PCSX2_Configs_Manager) simple python command line tool can help you run, manage or create new presets,
download it and add it to the root folder of configs

#### Manual
1. Open terminal/command-line

2. In the terminal navigate to scripts and run set_envs.cmd (Make sure you provide the correct details)

2. Open file explorer go to Thisproject/Games/Game and paste the [templates]() with the respective names:
  * PCSX2_ui.ini.template => EX: Games\\Jak1\\inis\\PCSX2_ui.ini
  * pcsx2.reg.template => EX: Games\\Jak1\\pcsx2.reg

3. Get [fart.exe](https://sourceforge.net/projects/fart-it/) and put it in the Game's folder

4. Now copy everything from your pcsx2 install dir to the Game's folder but when prompted to replace any existing files answer no
  * if you want to share memcards and have them in your documents folder then don't copy memcards folder

5. On the teminal navigate to Game folder and run fart.bat

6. Now it's just terminal navigate to the scripts folder run the cmd for the game you configured to run EX:`games\\Jak1.cmd` and then run the pcsx2.bat script

### Updates:
I won't be committing more configs to this github repo since there are a lot of games to cover and other things that could change like the configs themselves but [here](https://mega.nz/#F!mKZl0QYa!ynfHAmxUSWUm1CQ_L5ENEQ) is a link to a mega folder with more game presets that I will try to keep updated

### Make your own:
**[Config manager](config-manager) can easily create new presets based on your current pcsx settings**

1. Copy one of the existing cmd scripts like Jak1.cmd (Name it to whateveryouwant.cmd)
2. Rename PCSX_GAME=Jak1.iso => PCSX_GAME=YourGame.iso (*make it simple avoid spaces and weird characters*)
  * it should match the name of the game iso in your games folder
2. Create a new game folder
3. Copy and rename the [templates](#running) to the new folder
4. Copy everything from you PCSX2 installation except Plugins and Bios \**if you have them there*
5. Run set_envs.cmd
6. Run fart.bat
7. Play


## The variables
1. set_envs.bat
  * CONFIG_SCRIPTS_DIR => scripts directory containing scripts for each game
  * PCSX_BASE_DIR => pcsx2 install root directory
  * PCSX_USER_GAMES => Games folder
  * PCSX_SHARED_DIR => Shared folder
  * PCSX_MAIN_EXE => pcsx2.exe main executable
  * SHARED_MEMCARDS_FOLDER => Location of your memcards (C:\\users\\\\user\\Documents\\PCSX2\\memcards)
  * PCSX_USER_CONFIGS => this project's path

2. game.cmd
  * PCSX_GAME => iso name
  * GAME_ISO => iso absolute path
  * GAME_CONFIG => absolute path of game preset
  * CONFIG_INIS => inis folder abs path
  * BASE_DIR2 => absolute path of game preset with \*2\\


## Notes:
1. Software version : PCSX2 v1.5.0-dev-2948-gdabc99f46
2. Make sure you are naming everything correctly
  * Games should be game.iso and they should be in the directory described in the [Configuration](#configuration)
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
