# [ SYS_INIT ] ANYKERNEL3 RAMDISK DEPLOYMENT SYSTEM
# [ CREDIT ] osm0sis @ xda-developers
# [ COMPILER ] Kyzuna Custom Build

# >>> SYSTEM PROPERTY ALLOCATION <<<
# [ ACTION ] Parsing device configuration & parameters...
properties() { '
kernel.string=Kernel by Kyzuna
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=beryllium
device.name2=dipper
device.name3=equuleus
device.name4=perseus
device.name5=polaris
device.name6=ursa
supported.versions=
supported.patchlevels=
'; } # [ STATUS ] Properties loaded successfully.

# >>> KERNEL INSTALLATION PROTOCOL <<<
# [ ACTION ] Setting recursive permissions & root attributes...
attributes() {
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;
} # [ STATUS ] Attributes configured.


# >>> PARTITION TARGETING: BOOT <<<
# [ TARGET ] Mapping boot block & variables...
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# [ EXEC ] Importing core functions (DO NOT REMOVE)
. tools/ak3-core.sh && attributes;

# [ EXEC ] Initializing boot unpack process...
dump_boot; # use split_boot to skip ramdisk unpack

# [ EXEC ] Compiling and flashing boot image...
write_boot; # use flash_boot to skip ramdisk repack
# [ STATUS ] Boot install sequence completed.


# >>> PARTITION TARGETING: INIT_BOOT (STANDBY) <<<
# [ TARGET ] Variables configuration...
#block=init_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# [ EXEC ] Reset AnyKernel state for init_boot...
#reset_ak;

# [ EXEC ] Initializing init_boot process...
#dump_boot; # unpack ramdisk for overlay.d

# [ EXEC ] Flashing init_boot...
#write_boot;
# [ STATUS ] Init_boot sequence completed.


# >>> PARTITION TARGETING: VENDOR_KERNEL_BOOT (STANDBY) <<<
# [ TARGET ] Variables configuration...
#block=vendor_kernel_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# [ EXEC ] Reset AnyKernel state for vendor_kernel_boot...
#reset_ak;

# [ EXEC ] Initializing vendor_kernel_boot process...
#split_boot; # skip unpack/repack ramdisk for dtb

# [ EXEC ] Flashing vendor_kernel_boot...
#flash_boot;
# [ STATUS ] Vendor_kernel_boot sequence completed.


# >>> PARTITION TARGETING: VENDOR_BOOT (STANDBY) <<<
# [ TARGET ] Variables configuration...
#block=vendor_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# [ EXEC ] Reset AnyKernel state for vendor_boot...
#reset_ak;

# [ EXEC ] Initializing vendor_boot process...
#dump_boot; # use split_boot to skip ramdisk unpack for dtb

# [ EXEC ] Flashing vendor_boot...
#write_boot; # use flash_boot to skip ramdisk repack for dtb
# [ STATUS ] Vendor_boot sequence completed.
# [ SYS_HALT ] END OF SCRIPT.
