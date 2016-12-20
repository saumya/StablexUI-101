StablexUI 101
================

Updated to Openfl 4.5.1 and it runs fine.

TODO: Test in mobile devices.



Second
================
Even if you have `openFL 4.5.0` set it to `openFL 4.4.1` then everything works. 


First find
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
