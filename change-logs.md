# Change-logs

## 5. Dec 31, 2018
*Release status: beta-v5*
Changes: Added I/O schedule switcher, a driver to change the I/O scheduler when the screen turns off. CPU Govs: Added Chill & Adaptive. CPU: Added MSM Limiter driver v5.3. MSM Thermal: Added IntelliThermal v3.1. binder: some patches suggested by @DanGLES3. SmartPack boot script: a bunch of updates (credits mainly to @DanGLES3). Misc: set westwood as the default tcp. Misc. Update wireguard. Bunch of other changes. Please check my Github source for more info.

## 4. Dec 27, 2018
*Release status: beta-v4*
Changes: Unified to work on both Oreo& Pie. Incorporating recent patches from osm0sis's AnyKernel2 repo. Ramdisk: removed spectrum support and added SmartPack boot script. Misc changes.

## 3. Oct 15, 2018
*Release status: beta-v3*
Changes: thermal: msm_thermal: Added advanced parameters. cpufreq: Added tripndroid & Impulse govs. cpufreq: implement zen-tune v4.10 for Ondemand gov. fs: added sdFAT file system. A lot of optimizations and patched for everywhere to make the kernel much snappier.

## 2. Sep 07, 2018
*Release status: beta-v2*
Changes: Add control over Min Display Backlight. Added Interactive Pro, Pegasusq Yankactive & Alucard Governers. Add MSM Sleeper CPU Hotplug. Add OS check to the anykernel script so that it won't be installed on any android version except Android 8.1.0 (Oreo).

## 1. Aug 27, 2018
*Release status: beta-v1*
The very first release for Moto G3 2015 running Lineage OS 15.1 (Android 8.1.0).
Based on the [source code](https://github.com/MOTO-M8916/kernel_motorola_msm8916).
