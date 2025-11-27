### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Test Kernel by ZetLink
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=0
do.cleanuponabort=0
device.name1=rhode
device.name2=hawao
device.name3=devon
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; }

boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
}

block=/dev/block/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh;

dump_boot;
write_boot;