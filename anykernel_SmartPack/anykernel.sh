#
# SmartPack-Kernel (AnyKernel) Script
#
# Credits: osm0sis @ xda-developers
#
# Modified by sunilpaulmathew@xda-developers.com
#

## AnyKernel setup
# begin properties
properties() { '
kernel.string=SmartPack Kernel by sunilpaulmathew@xda-developers.com
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=Moto G3
device.name2=osprey
device.name3=
device.name4=
device.name5=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 755 $ramdisk

## AnyKernel install

# Check Android version
ui_print "Checking android version...";
android_ver=$(file_getprop /system/build.prop "ro.build.version.release");
ui_print "Android $android_ver detected...";
ui_print " ";
if [ ! "$android_ver" == "8.1.0" ]; then
  ui_print "This version of SmartPack-Kernel is only compatible with Android 8.1.0!";
  exit 1;
fi;

dump_boot;

# begin ramdisk changes

# init.rc
backup_file init.rc;
grep "import /init.spectrum.rc" init.rc >/dev/null || sed -i '1,/.*import.*/s/.*import.*/import \/init.spectrum.rc\n&/' init.rc

# init.tuna.rc

# fstab.tuna

# end ramdisk changes

write_boot;

## end install

