StablexUI 101
================

A simple test to see if this library is workable. Seems like it is.

5th
===============
 - Tested with a REST call, working fine.

4th
===============
 - Tested on Android, it runs fine
 - The UI is not same as desktop / required work to fix Android / device UI


3rd
===============
 - Windows : Ok (Updated to Openfl 4.5.1)
 - Linux : Could not compile ( Haxe:3.2.1, Neko:2.1.0, openfl:4.5.1, lime:3.5.1 )
 - Mac : Ok ( Haxe:3.2.1, Neko:2.0.0, openfl:4.5.1, Lime:3.5.1 )


2nd
================
Even if you have `openFL 4.5.0` set it to `openFL 4.4.1` then everything works. 


1st
================
While playing with this library it seems, the library is only good for `Flash` and `HTML` targets.

In a simple project like this, it fails for `Neko` and `mac`.     

It throws the following errors   

```
malloc: *** error for object 0x102b2eeef: pointer being freed was not allocated
*** set a breakpoint in malloc_error_break to debug
```

### Note
 - It works for other target if compiled with -Dlegacy as below

```
lime test neko -Dlegacy
```
