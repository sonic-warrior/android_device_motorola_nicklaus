Device Tree for Motorola Moto E4 Plus
===========================================

The Motorola Moto E4 Plus (codenamed _"nicklaus"_) is a mid-range smartphone from Motorola.
Click here to see [Building manual](https://github.com/LineageOS-MediaTek/android_device_motorola_nicklaus/tree/cm-14.1/MANUAL.md)

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.3 GHz Cortex-A53
Chipset | MediaTek MT6737M
GPU     | Mali-T720 MP2
Memory  | 2GB RAM
Shipped Android Version | 7.1
Storage | 16GB
MicroSD | Up to 128GB
Battery | 5000mAh
Display | 720 x 1280 pixels, 5.5 inches
Camera  | Main 13MP / Front 5MP, autofocus, LED flash

![Moto E4 Plus](http://drop.ndtv.com/TECH/product_database/images/6132017104528AM_635_motoe4plusdb.jpeg "Moto E4 Plus")


Developer notes before you try to build
===========================================

Before you try to build any rom using this codebase, you need to known that this is a _"work in progress"_ project
and may not generate an usable build or complete the build at all. But it would be helpful if you can make
test builds and report as progress is made. 

The target goal of this tree is build LineageOS 19.1 with Android 12
as the main version. And since the Moto E4 Plus has a MediaTek MT6737M
as its main processor, I plan to target 64 bits for this ROM (For some
reason Motorola shipped the device with a 32 bit android even though
the processor has support for 64 bits roms. Also the kernel source
code from Motorola itself has a build system already made for a 64 bit
version of the 3.18 kernel for the Moto E4 Plus. Why did they choose
to ship a 32 bit version of the Android OS instead of a 64 bit version
for a lot of their devices from the same time still a mysterie to me.
Maybe because of the amount of RAM?).

Originally, I was targeting Android 9, but at that time I didn't have
enough knoledge on how to port custom ROMs, but now, with the knoledge
I have, I'm pretty sure that I can make this port. Also, Android 9 is
kind "old" now, so target Android 12 makes more sense to me. It would
also be difficult and time consuming to port from Android 8 all the way up to Android 12,
So I prefer to do the hard work now instead of later.

And finally, the final result should be a ROM with every base funciton
working (4G, Bluetooth, brightness control, frontal and rear camera, charging led,
dual-sim, fingerprint, frontal and back flashlights, GPS, gyroscope sensor, light sensor, memory card, OTG
Support, proximity sensor, Radio FM, rotation sensor, screen, frontal and rear speakers, touchscreen, video
recording, USB charging and data transfer, voice calls, voice
recording, Wi-Fi). This may require a lot of testing but its possible.

Don't use _"setup-makefiles.sh"_ since this script are not ready to use, and the
proprietary-files.txt have the wrong files since they are from the
Moto G5 device tree.
