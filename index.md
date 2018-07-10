# About

**dhewm3** is a source port of the original Doom3 (**not** *Doom3 BFG*, for that you may want to
try [RBDoom3BFG](https://github.com/RobertBeckebans/RBDOOM-3-BFG/)).
It's known to work on Windows, Linux, macOS, [FreeBSD](https://freebsd.org),
[OpenBSD](https://openbsd.org) and [AROS](http://www.aros.org/),
but it should work (or be easily portable to) on any system that supports OpenGL 1.4 with
[ARB shaders](https://en.wikipedia.org/wiki/ARB_assembly_language),
[SDL](http://libsdl.org) and [OpenAL](http://openal.org).  
Compared to the original version of Doom3, dhewm3 has many bugfixes, supports EAX-like sound effects on
all operating systems and hardware (via [OpenAL Softs](http://openal-soft.org/) EFX support), has better
support for widescreen resolutions and it has 64bit support.  
However, it currently does not support old Mods that require their own game DLL or the integrated
(Windows-only) editors.  
Note that while the Doom3 source code has been released under GPL, you still need to legally own the
game and provide dhewm3 the game data to play. See the [How to Install](#how-to-install) section for
more information.

# News

#### 2018-07-11: _dhewm3.org launched_

dhewm3 now has an official homepage!

I guess it makes sense to be a bit less dependent on Github (especially as
it has been bought by Microsoft, but also in general), so I decided to create
this homepage with a domain I control.  
Another advantage is that it has some screenshots and more user-centric documentation
than the [README.md](https://github.com/dhewm/dhewm3/blob/master/README.md).  
We'll continue to use Github for hosting the code and issues (and indeed this
page via github pages), but if we need to migrate to another hoster some day,
[dhewm3.org](http://dhewm3.org) will still be reachable and will link to the
new code repo and issue tracker instead.


#### 2016-06-18: _dhewm3 1.4.1 released_

Fixes/improvements since 1.4.0:

 * Fixed some (kinda rare) crashes due to assertion errors, especially observed in the last
   boss fights of both doom3 and the Resurrection of Evil Addon.
 * Improved compatibility with AZERTY keyboards (the row of keys with 1...9, 0 is now usable)
 * Fixed a crash (at least on FreeBSD) when loading Resurrection of Evil's last level
 * Compatibility with Microsoft Visual Studio 2015
 * Video resolutions in menu now sorted, added 2880x1800
 * Support for up to 8 mouse buttons (on Linux this needs SDL2 2.0.4 or newer to work)

# How to Install

## Getting the Game Data

You'll need the game data from a Doom3 installation patched to 1.3.1.
Specifically, you'll need the following .pk4 files for the main game:

--------------------------------------------------------------
  Filename          Size  MD5-sum                          
----------------- ------- ------------------------------------
 base/pak000.pk4   337MB  71b8d37b2444d3d86a36fd61783844fe 
 base/pak001.pk4   220MB  4bc4f3ba04ec2b4f4837be40e840a3c1 
 base/pak002.pk4   398MB  fa84069e9642ad9aa4b49624150cc345 
 base/pak003.pk4   303MB  f22d8464997924e4913e467e7d62d5fe 
 base/pak004.pk4   227MB  38561a3c73f93f2e6fd31abf1d4e9102 
 base/pak005.pk4   540KB  2afd4ece27d36393b7538d55a345b90d 
 base/pak006.pk4   214KB  a6e7003fa9dcc75073dc02b56399b370 
 base/pak007.pk4   118KB  6319f086f930ec1618ab09b4c20c268c 
 base/pak008.pk4    12KB  28750b7841de9453eb335bad6841a2a5
--------------------------------------------------------------

... and (optionally) these .pk4 files for *Resurrection of Evil* addon:

--------------------------------------------------------------
  Filename          Size  MD5-sum                          
----------------- ------- ------------------------------------
 d3xp/pak000.pk4   514MB  a883fef0fd10aadeb73d34c462ff865d
 d3xp/pak001.pk4    98KB  06fc9be965e345587064056bf22236d2
--------------------------------------------------------------

### ... from CD/DVD + Patch

If you bought the game on CDs/DVD, base/pak000.pk4 - pak004.pk4 and d3xp/pak000.pk4
can be copied from the disks, the other files are from the patch.

On **Linux** (and probably other **Unix-like** systems and maybe even Windows with a mingw shell) you can
extract the needed files from [the official 1.3.1 patch for Linux](https://files.holarse-linuxgaming.de/native/Spiele/Doom%203/doom3-linux-1.3.1.1304.x86.run)
with:
```
  sh /path/to/doom3-linux-1.3.1.1304.x86.run --tar xvf --wildcards base/pak* d3xp/pak*
```

On **Windows** you can just install the game and [the official 1.3.1 patch for Windows](https://archive.org/details/Doom_3_1.3.1)
and then get the files from the installation directory (or copy dhewm3 in there).

### ... from Steam

First you need to buy [Doom3](http://store.steampowered.com/app/9050/) of course
(and the [Resurrection of Evil Addon](https://store.steampowered.com/app/9070/),
if you want that too; Note that the Addon is not available in Germany).

Thankfully the game from Steam is already fully patched to 1.3.1.

On **Windows**, *just install* it and copy the game data from there (see above for what files are needed).

On **Linux/OSX** unfortunately you can't just install the game, it's Windows-only on Steam (unless you run Windows Steam in Wine).  
However, you can still download it with **[SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)**.  
See [this description for Linux](https://developer.valvesoftware.com/wiki/SteamCMD#Linux)
or [here for OS X](https://developer.valvesoftware.com/wiki/SteamCMD#OS_X)
on how to install SteamCMD on your system. You won't have to create a new user.

Then you can download doom3 with

`./steamcmd.sh +@sSteamCmdForcePlatformType windows +login <YOUR_STEAM_LOGIN_NAME> +force_install_dir ./doom3/ +app_update 9050 validate +quit`

(replace `<YOUR_STEAM_LOGIN_NAME>` with your steam login name)  
When it's done you should have the normal windows installation of doom3 in `./doom3/`
and the needed files in `./doom3/base/`  
It should be possible to get the *Resurection of Evil* data in the same way,
by replacing `9050` with `9070`; the files should be in `./doom3/d3xp/` then.

By the way, that number is the "AppID" of Doom3/RoE; if you wanna use this to
get the data of other games you own, you can look up the AppID at [SteamDB](https://steamdb.info/).


## Getting dhewm3 executables

On **Windows** you can just download the Win32 binaries from the [Download page](https://github.com/dhewm/dhewm3/releases/latest).  
You can either extract them into your Doom3 installation directory, or into a fresh
directory and copy the needed game data ([see above](#getting-the-game-data)) in there.

On Linux and *BSD it might be that your package manager provides a dhewm3 package/port that
you can install; please refer to that packages documentation on where to put the game data.  
You could also try telling dhewm3 where to find the game data with:
```
  dhewm3 +set fs_basepath /home/HansWerner/Games/doom3
```
(adjust the path to your needs)

If your package manager does not provide dhewm3 (or you're on macOS/OSX and there is none),
or you want to use the very latest code, you'll have to compile it yourself.
It's not super hard, see [the README](https://github.com/dhewm/dhewm3/blob/master/README.md#compiling)
for details on compiling and [the FAQ](https://github.com/dhewm/dhewm3/wiki/FAQ#where-do-i-need-to-put-the-game-data-files)
on where to put the game data.

