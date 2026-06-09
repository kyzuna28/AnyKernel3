### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=Kyzuna :: Secure Architecture :: Engine
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
'; } # end properties

### AnyKernel install
# begin attributes
attributes() {
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;
} # end attributes


## boot shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh && attributes;

# boot install
dump_boot; # use split_boot to skip ramdisk unpack, e.g. for devices with init_boot ramdisk

# ─── FINAL PRODEV UI: CLEAN MONO + EMOJI ───
ui_print " ";
ui_print "  ⬢  𝗞𝗬𝗭𝗨𝗡𝗔 𝗣𝗥𝗢𝗝𝗘𝗖𝗧  ✨";
ui_print "     [ 📱 device : sdm845 // 🧑‍💻 by : seleax×kyy ]";
ui_print " ";
ui_print "  ➔  ⚙️  𝘀𝘁𝗮𝘁𝘂𝘀 : initializing script environment";
ui_print "     ▫ 📦 extracting image partitions...";
ui_print "     ▫ 🧬 executing dynamic patchers...";
ui_print " ";
ui_print "  ➔  ⚡  𝘀𝘁𝗮𝘁𝘂𝘀 : writing modifications";

write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk

ui_print "     ▫ 💾 synchronization successfully...";
ui_print "  ✔  🚀  𝘀𝘁𝗮𝘁𝘂𝘀 : core flash completed";
ui_print " ";
## end boot install


## init_boot shell variables
#block=init_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# reset for init_boot patching
#reset_ak;

# init_boot install
#dump_boot; # unpack ramdisk since it is the new first stage init ramdisk where overlay.d must go

#write_boot;
## end init_boot install


## vendor_kernel_boot shell variables
#block=vendor_kernel_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# reset for vendor_kernel_boot patching
#reset_ak;

# vendor_kernel_boot install
#split_boot; # skip unpack/repack ramdisk, e.g. for dtb on devices with hdr v4 and vendor_kernel_boot

#flash_boot;
## end vendor_kernel_boot install


## vendor_boot shell variables
#block=vendor_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# reset for vendor_boot patching
#reset_ak;

# vendor_boot install
#dump_boot; # use split_boot to skip ramdisk unpack, e.g. for dtb on devices with hdr v4 but no vendor_kernel_boot

#write_boot; # use flash_boot to skip ramdisk repack, e.g. for dtb on devices with hdr v4 but no vendor_kernel_boot
## end vendor_boot install
