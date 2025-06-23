### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=DanceKernek by ZetLink
do.devicecheck=1
do.modules=1
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=devon
device.name2=hawao
device.name3=rhode
supported.versions=15
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

block=/dev/block/bootdevice/by-name/boot;Add commentMore actions
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh;

dump_boot;
write_boot;