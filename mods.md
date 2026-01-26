# Modifications for **dhewm3**

Unfortunately dhewm3 can't support all old Doom3 modifications, as it's incompatible with old Game DLLs.
This means that old Mods are only supported if they *either* have been ported to dhewm3
*or* don't require their own Game DLL (but are using the one from the main game).  
The essential requirement for porting Mods to dhewm3 is that the original Mod authors must
release the source code **under the GPLv3 license** (that id Software chose when open sourcing Doom3).
The [dhewm3 SDK project page](https://github.com/dhewm/dhewm3-sdk#how-to-port-a-mod-to-dhewm3) has more information.  
General information about idTech4 (Doom3, Quake4, Prey, ET:QW, ...) modding can be found at
the **[idTech4 ModWiki](https://modwiki.dhewm3.org)**.

**NOTE** that all mods *(except for Fitz Packerton, which is a standalone game)* **require the full version
of Doom3** (some also need the Resurrection of Evil addon, see the mod descriptions below for details).

# General Mod Installation instructions

Mods generally consist of two parts:

1. Their **game data**, which is generally in a directory named after the mod, like `dentonmod/`.  
   That data usually is mostly .pk4 files, but other "loose" files in the mod directory may also be used.
     - It must be put in
       [an appropriate location](https://github.com/dhewm/dhewm3/wiki/FAQ#where-do-i-need-to-put-the-game-data-files),
       just like the game data from the base game. There the **mod directory** (e.g. `dentonmod/`)
       must be **next to the base/** directory (that contains the game data of the main game).
     - See the [list of Mods](#list-of-supported-mods) below for where to get the game data.
2. Their mod **.dll**, built from their gamecode, which must've been be adjusted for dhewm3 and must
   have the same name as the mod directory, but with .dll (or .so or .dylib, depending on your
   operating system) at the end, like `dentonmod.dll`.
    - Not all mods need their own .dll though, some use the base game's gamecode and just have their
      own game data.  
      If a Mod is [listed below](#list-of-supported-mods) and mentions a **.dll**, it needs one.  
      That list also mentions where to download the prebuilt DLL for *x86 Windows* (or .so libs for
      *x86_64 Linux*), usually they're provided with the
      [latest dhewm3 release](https://github.com/dhewm/dhewm3/releases/latest),
      in the *dhewm3-mods-\** archives, and where to get the sourcecode to build it yourself.
    - The Mod .dll (e.g. `dentonmod.dll`) must be **next to base.dll**, generally
      **next to dhewm3.exe** - **NOT** in the mod directory!

### Things to keep in mind if you're not using Windows

* In the instructions above, mentally replace `.dll` with `.so` or `.dylib` or whatever dynamic libraries
  are called on your operating system, and replace `dhewm3.exe` with `dhewm3` or however the dhewm3 executable
  is called on your system
* Note that **Doom3 requires mod names to be lowercase**, so both the mod directory and the dll must
  only have lowercase characters (like `dentonmod/` instead of `Dentonmod/`). On Windows it happens
  to work even if this rule is not followed, because its file system is case-insensitive. On other
  operating systems it might not, so you **may have to rename the mod directory** accordingly.
  This is also mentioned in the mod-specific instructions below where needed
* Currently dhewm3 only provides prebuilt mod libraries (.dll/.so) for *x86 Windows* and *x86_64/amd64 Linux*.
  If you're using **a different operating system** (or CPU architecture) you'll have to **build the "Mod .dll"
  yourself**. The list of mods below links the mods source code and you can find generic build instructions
  at [the dhewm3-sdk project page](https://github.com/dhewm/dhewm3-sdk#how-to-build)

# List of supported Mods

## Blood Mod

*Blood Mod* adds HD blood, monster giblets and some blood-related Phrozo effects to the game,
combining the gore effects of several other mods.

A big THANK YOU to *ALord7* for releasing the mod's source under GPL!

* You can get the game data at [ModDB](https://www.moddb.com/mods/blood-mod/downloads/blood-mod-v18)
    - Just extract that zip to your Doom3/dhewm3 installation
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/bloodmod)
* A **.dll** that works with the official dhewm3 **Windows** executable and a **.so** for Linux
  (on amd64 aka x86_64) is part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself
* Once the game data and bloodmod.dll/bloodmod.so/bloodmod.dylib (and bloodmod_roe.dll/...) are in place, you can start the mod with:
  `./dhewm3 +set fs_game bloodmod`  
  The version for Resurrection of Evil can be started with: `./dhewm3 +set fs_game_base d3xp +set fs_game bloodmod_roe`

## Classic Doom 3

<a href="mods/cdoom1.jpg" title="Screenshot 1 of Classic Doom3"><img src="mods/small-cdoom1.jpg" height=200></a>
<a href="mods/cdoom2.jpg" title="Screenshot 2 of Classic Doom3"><img src="mods/small-cdoom2.jpg" height=200></a>

*Classic Doom 3* is a remake of the first episode of the original Doom in Doom3.

A big THANK YOU to "SnoopJeDi" (and the rest of the Classic Doom 3 Team) for releasing this mod under GPL!

* You can get the game data at [ModDB](https://www.moddb.com/downloads/classic-doom-3-131)
    - Just extract that zip to your Doom3/dhewm3 installation.
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/cdoom)
* A **.dll** that works with the official dhewm3 **Windows** executable and a **.so** for Linux
  (on amd64 aka x86_64) is part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself
* Once the game data and cdoom.dll/cdoom.so/cdoom.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game cdoom`

## Denton's Enhanced Doom3

This mod enhances the looks and sound of Doom3 and provides several new features for custom maps.

A big THANK YOU to "Clone JC Denton" for releasing his mod under GPL!

* You can get the game data at [ModDB](https://www.moddb.com/mods/dentons-enhanced-doom3-v202/downloads/dentons-enhanced-doom3-v2021)
    - Open that zip and extract the contained `Extract this to your doom3 folder.zip` to your Doom3/dhewm3 installation.
    - Especially if you're not on Windows, make sure to rename the contained `Dentonmod/` directory to `dentonmod/`,
      as Doom3 doesn't like uppercase characters in paths (while it works on Windows,
      it doesn't on Linux, FreeBSD and possibly OSX!)
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/dentonmod)
* A **.dll** that works with the official dhewm3 **Windows** executable and a **.so** for Linux
  (on amd64 aka x86_64) is part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself
* Once the game data and dentonmod.dll/dentonmod.so/dentonmod.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game dentonmod`

## Desolated - The Crying Fate

A Total Conversion based on Doom 3. It comes with a complete new storyline about the shade between
good and evil plus two other gamemodes. A quest-, rpg- and moneysystem are just a few of the many
new game mechanics that will await you. If you want to see everything you'll need at least 7-8 hours...

A big THANK YOU to *DaveTheFreak* and his team for giving me the source code! Further thanks
to *walikor* for getting in touch with him and convincing him to release the source!

* You can get the game data at [ModDB](https://www.moddb.com/mods/desolated-the-crying-fate/downloads/desolated-the-crying-fate-v10)
    - Extract that zip to your Doom3/dhewm3 installation  
      **and rename the directory** from `Desolated/` to `desolated/` (all-lowercase), especially
      if you're not using Windows.
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/desolated)
* A **.dll** that work with the official dhewm3 **Windows** executable and a **.so** file for Linux
  (on amd64 aka x86_64) are part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/tag/1.5.5_RC1)
    - for other platforms you'll have to compile it yourself
* Once desolated.dll/desolated.so/desolated.dylib are in place, you can start the mod with:
  `./dhewm3 +set fs_game desolated`

## ELDOOM

A singleplayer campaign for Doom3 with lots of action. A full story from beginning to end.
High quality portal skies. Large custom quality maps.

A big THANK YOU to *Ez0n3* for releasing this mod under GPL!

* You can get the gamedata at [ModDB](https://www.moddb.com/mods/eldoom/downloads/eldoom-v10)
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/eldoom)
* **.dll**s that work with the official dhewm3 **Windows** executable and **.so** files for Linux
  (on amd64 aka x86_64) are part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/tag/1.5.5_RC1)
    - for other platforms you'll have to compile it yourself
* Once the game data and eldoom.dll/eldoom.so/eldoom.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game eldoom`

## HeXen: Edge Of Chaos

This was supposed to become a big total conversion based on the HeXen games, with three episodes and
character classes.  
Unfortunately the project died, but they released  this impressive demo in 2010 which can now be played with dhewm3.

A monumental thank you to *Zeroth* for releasing this mod under GPL and to *LegendGuard* for
contacting *Zeroth* and getting permission for this and doing the initial dhewm3 port!

* You can get the gamedata at [ModDB](https://www.moddb.com/games/doom-iii/downloads/hexen-edge-of-chaos-dhewm3-edition)  
  Make sure to download the dhewm3 edition, the regular one doesn't work with the dhewm3 port!
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/eoc)
* **.dll**s that work with the official dhewm3 **Windows** executable and **.so** files for Linux
  (on amd64 aka x86_64) are part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/tag/1.5.5_RC1)
    - for other platforms you'll have to compile it yourself
* Once the game data and eoc.dll/eoc.so/eoc.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game eoc`

## Fitz Packerton

<a href="mods/fitz1.jpg" title="Screenshot 1 of Fitz Packerton"><img src="mods/small-fitz1.jpg" height=200></a>
<a href="mods/fitz2.jpg" title="Screenshot 2 of Fitz Packerton"><img src="mods/small-fitz2.jpg" height=200></a>

Actually a small standalone game based on Doom3 GPL, so you don't even need the Doom3 game data to run this!

Fitz Packerton is *"A theatrical game about a man and the things he carries.
Pack what you must. Pray you won't need it."*

* You can get the game data at [https://teddydief.itch.io/fitz](https://teddydief.itch.io/fitz)
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/fitz)
* A **.dll** that works with the official dhewm3 **Windows** executable and a **.so** for Linux
  (on amd64 aka x86_64) is part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself
* Once the game data and fitz.dll/fitz.so/fitz.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game fitz`

## Grimm: Quest for the Gatherer's Key

Grimm Quest for the Gatherer's Key is a Hack and Slash Fantasy game with some platforming elements
that leans heavily on extremely bloody and satisfying gameplay.

A big THANK YOU to *grimmquest* for releasing the mods source under GPL!

* You can get the game data at [ModDB](https://www.moddb.com/mods/grimm-quest-for-the-gatherers-key)
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/grimm)
* **.dll**s that work with the official dhewm3 **Windows** executable and **.so** files for Linux
  (on amd64 aka x86_64) are part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/tag/1.5.5_RC1)
    - for other platforms you'll have to compile it yourself
* Once the game data and grimm.dll/grimm.so/grimm.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game grimm`

## Hard Corps

<a href="mods/hc1.jpg" title="Screenshot of Hard Corps"><img src="mods/small-hc1.jpg" height=200></a>
<a href="mods/hq2.jpg" title="Screenshot of HardQore2"><img src="mods/small-hq2.jpg" height=200></a>

The *DOOM 3: Hard Corps* is an enhanced/remastered version of the classic *HardQore2* mod for Doom3.  
It brings classic, fast paced, thumb blistering **side scrolling action** to Hell.  
If you're a fan of classic action games such as Contra & Metal Slug; then Hard Corps is what you have been waiting for.

Thanks a lot to Revility and Ivan_the_B (and the rest of the HardQore2 / Hard Corps team) 
for developing this Mod for dhewm3! :-)

* You can get the game data at: [https://www.moddb.com/mods/hardcorps/downloads](https://www.moddb.com/mods/hardcorps/downloads)
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/hardcorps)
* A **.dll** that works with the official dhewm3 **Windows** executable and a **.so** for Linux
  (on amd64 aka x86_64) is part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself
* Once the game data and hardcorps.dll/hardcorps.so/hardcorps.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game hardcorps`

## LibreCoop

<a href="mods/librecoop1.jpg" title="Screenshot 1 of LibreCoop"><img src="mods/small-librecoop1.jpg" height=200></a>
<a href="mods/librecoop2.jpg" title="Screenshot 2 of LibreCoop"><img src="mods/small-librecoop2.jpg" height=200></a>

LibreCoop is an open source coop mod for dhewm 3 supporting both the base game and the *Resurrection of Evil* Addon.

Thanks a lot to Stradex for developing this awesome mod that finally allows cooperative multiplayer in dhewm3!

* You can download the needed game data at [ModDB](https://www.moddb.com/mods/librecoop-dhewm3-coop)
* You can find the source at [the LibreCoop Github repo](https://github.com/Stradex/librecoop/)
* A **.dll** that works with the official dhewm3 **Windows** executable and a **.so** for Linux
  (on amd64 aka x86_64) is part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself
    - there's actually official downloads for Win32 and Linux on amd64, but dhewm3 provides
      DLLs/.so's anyway in case the official ones don't work on your system
* Once the game data and librecoop.dll/.so/.dylib and librecoopd3xp.dll/.so/dylib are in place,
  you can start the mod with:
    -  `./dhewm3 +set fs_game librecoop` for the main game or
    - `./dhewm3 +set fs_game_base d3xp +set fs_game librecoopd3xp` for *Resurrection of Evil*

## Perfected Doom 3

*Perfected Doom 3* attempts to completely overhaul the entire game with new monsters, rebalanced weapons,
rebalanced monster stats, better graphics, new gameplay features and much more. Based on [Sikkmod](#sikkmod-and-sikkmod-roe)

Thanks a lot to *VGames* for releasing the source under GPL!

* You can get the game data at [ModDB](https://www.moddb.com/mods/perfected-doom-3-version-500/downloads)
    - Especially if you're not on Windows, make sure to rename the contained `Perfected/` directory to `perfected/`,
      and `Perfected_ROE/` to `perfected_roe/`, because Doom3 doesn't like uppercase characters in paths
      (while it works on Windows, it doesn't on Linux, FreeBSD and possibly OSX!)
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/perfected)
* **.dll**s that work with the official dhewm3 **Windows** executable and **.so** files for Linux
  (on amd64 aka x86_64) are part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself
* Once the game data and perfected.dll/perfected.so/perfected.dylib (or perfected_roe.dll/.so/.dylib for Perfected ROE)
  are in place, you can start the mod with:  
  `./dhewm3 +set fs_game perfected`  
  or, for the Resurrection of Evil Addon (with Perfected ROE):  
  `./dhewm3 +set fs_game_base d3xp +set fs_game perfected_roe`

## Real Gibs

This mod adds a gibbing effect to most monsters in the game.

Big thanks to *darknar* for releasing the mods source code, and to *ALord7* for porting it to dhewm3!

* You can download the mods game data at [ModDB](https://www.moddb.com/games/doom-iii/addons/real-gibs-v106-for-dhewm3-32-bit)  
  *Note:* The page says "for 32bit", but that only refers to the included realgibs.dll. The game data
works on all platforms, you just need the appropriate realgibs.dll/.so/.dylib
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/realgibs)
* **.dll**s that work with the official dhewm3 **Windows** executable and **.so** files for Linux
  (on amd64 aka x86_64) are part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/tag/1.5.5_RC1)
    - for other platforms you'll have to compile it yourself
* Once the game data and realgibs.dll/realgibs.so/realgibs.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game realgibs`

## Scarlet Rivensin: The Ruiner

<a href="mods/rivensin1.jpg" title="Screenshot 1 of Rivensin"><img src="mods/small-rivensin1.jpg" height=200></a>
<a href="mods/rivensin2.jpg" title="Screenshot 2 of Rivensin"><img src="mods/small-rivensin2.jpg" height=200></a>

*Scarlet Rivensin: The Ruiner* (formerly known as just "Ruiner") is a dark, nightmarish,
third person action modification for Doom3 & dhewm 3.
The player assumes the role of a herald of Death & fights hordes of the damned using unique weapons, abilities and spells.

Thanks a lot to Revility (and the rest of the Rivensin/Ruiner team) for releasing the source under GPL!

* You can get the game data at [ModDB](https://www.moddb.com/mods/ruiner)
    - Just extract the dhewm3/rivensin subfolder of the .zip to your Doom3/dhewm3 installation.
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/rivensin)
* A **.dll** that works with the official dhewm3 **Windows** executable and a **.so** for Linux
  (on amd64 aka x86_64) is part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - Alternatively, the Rivensin downloads contain Windows binaries for dhewm3 and the Mod itself
    - for other platforms you'll have to compile it yourself
* Once the game data and rivensin.dll/rivensin.so/rivensin.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game rivensin`

## Sikkmod and Sikkmod RoE

*Sikkmod* is a general enhancement mod for Doom 3. Its main purposes are to update visuals of Doom 3
to a more modern level and to allow the user to customize various aspects of the game to suit their
preferred styles all while maintaining the core mechanics and aesthetics originally put in by id Software.

Thanks a lot to *Sikkpin* for [allowing to use the source under GPL](https://github.com/dhewm/dhewm3/issues/120#issuecomment-1555662168)!

* You can get the game data at <https://www.moddb.com/mods/sikkmod/downloads/sikkmod-v12>
  and <https://www.moddb.com/mods/sikkmod/downloads/sikkmod-v11-roe>
    - No, there is no Sikkmod v1.2 for Resurrection of Evil (RoE)
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/sikkmod)
* **.dll**s that work with the official dhewm3 **Windows** executable and **.so** files for Linux
  (on amd64 aka x86_64) are part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself
* Once the game data and sikkmod.dll/sikkmod.so/sikkmod.dylib (or sikkmodd3xp.dll etc for Sikkmod RoE),
  you can start the mod with:  
  `./dhewm3 +set fs_game sikkmod`  
  or, for the Resurrection of Evil Addon (with Sikkmod RoE):  
  `./dhewm3 +set fs_game_base d3xp +set fs_game sikkmodd3xp`

* **Note** that dhewm3's gamma in shader feature doesn't work well with Sikkmod,
  so you may want to disable it (`r_gammaInShader 0`)

## The Lost Mission

<a href="mods/d3le1.jpg" title="Screenshot 1 of Doom3: The Lost Mission"><img src="mods/small-d3le1.jpg" height=200></a>
<a href="mods/d3le2.jpg" title="Screenshot 2 of Doom3: The Lost Mission"><img src="mods/small-d3le2.jpg" height=200></a>

An entire new episode for Doom3!

Thanks a lot to Arl90 for releasing the source under GPL!

* You can get the gamedata at [ModDB](https://www.moddb.com/mods/the-lost-mission)
* You can find the source code at [Github](https://github.com/dhewm/dhewm3-sdk/tree/d3le)
* A **.dll** that works with the official dhewm3 **Windows** executable and a **.so** for Linux
  (on amd64 aka x86_64) is part of `dhewm3-mods_*_win32.zip` resp. `dhewm3-mods_*_Linux_amd64.tar.gz`
  on the [Download Page](https://github.com/dhewm/dhewm3/releases/latest)
    - for other platforms you'll have to compile it yourself

* **Note** that THIS MOD NEEDS the official "Resurrection of Evil" Addon (d3xp/) installed!

* Once the game data and d3le.dll/d3le.so/d3le.dylib are in place, you can start the mod with: 
  `./dhewm3 +set fs_game_base d3xp +set fs_game d3le`

