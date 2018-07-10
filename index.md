# About

**dhewm3** is a source port of the original Doom3 (**not** *Doom3 BFG*, for that you may want to
try [RBDoom3BFG](https://github.com/RobertBeckebans/RBDOOM-3-BFG/)).
It's known to work on Windows, Linux, macOS, [FreeBSD](https://freebsd.org),
[OpenBSD](https://openbsd.org) and [AROS](http://www.aros.org/),
but it should work (or be easily portable to) on any system that supports OpenGL 1.4 with
[ARB shaders](https://en.wikipedia.org/wiki/ARB_assembly_language),
[SDL](http://libsdl.org) and [OpenAL](http://openal.org).  
Compared to the original version of Doom3, dhewm3 has many bugfixes, supports EAX-like sound effects on
all operating systems and hardware (via [OpenAL-softs](http://TODO_URL!!) EFX support), has better
support for widescreen resolutions and it has 64bit support.  
However, it currently does not support old Mods that require their own game DLL or the integrated
(Windows-only) editors.  
Note that while the Doom3 source code has been released under GPL, you still need to legally own the
game and provide dhewm3 the game data to play. See the [How to Install](#how-to-install) section for
more information.

# News

### 2018-07-??: _dhewm3.org launched_

dhewm3 now has an official homepage!

We'll continue to use Github, but this is the page most people should go to first.  
This way we can more easily migrate to another git repo and issue tracker
hoster in case Github/Microsoft screws up.

### 2016-06-18: _dhewm3 1.4.1 released_

Fixes/improvements since 1.4.0:

 * Fixed some (kinda rare) crashes due to assertion errors, especially observed in the last
   boss fights of both doom3 and the Resurrection of Evil Addon.
 * Improved compatibility with AZERTY keyboards (the row of keys with 1...9, 0 is now usable)
 * Fixed a crash (at least on FreeBSD) when loading Resurrection of Evil's last level
 * Compatibility with Microsoft Visual Studio 2015
 * Video resolutions in menu now sorted, added 2880x1800
 * Support for up to 8 mouse buttons (on Linux this needs SDL2 2.0.4)

# How to Install

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
