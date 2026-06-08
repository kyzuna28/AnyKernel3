### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=⚡ Kyzuna Kernel - Unleash The Power ⚡
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

# ═══════════════════════════════════════════════════════════════════════
#                           KYZUNA KERNEL
# ═══════════════════════════════════════════════════════════════════════

ui_print " "
ui_print "║======================================================║"
ui_print "║      ⚡⚡⚡ K Y Z U N A  •  K E R N E L ⚡⚡⚡      ║"
ui_print "║                                                      ║"
ui_print "║       『 极致性能 』『 超级流畅 』『 稳定优化 』       ║"
ui_print "║                                                      ║"
ui_print "║             𝙋𝙤𝙬𝙚𝙧𝙚𝙙 𝘽𝙮 𝙆𝙮𝙯𝙪𝙣𝙖 𝙋𝙧𝙤𝙟𝙚𝙘𝙩          ║"
ui_print "║======================================================║"
ui_print " "

# boot install

ui_print "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
ui_print "┃ 🛰️ PROJECT         ➜ KYZUNA KERNEL                    ┃"
ui_print "┃ 👨‍💻 DEVELOPER       ➜ KYZUNA                           ┃"
ui_print "┃ 📱 PLATFORM        ➜ QUALCOMM SNAPDRAGON 845          ┃"
ui_print "┃ ⚙️ INSTALLER       ➜ ANYKERNEL3                       ┃"
ui_print "┃ 🔥 BUILD PROFILE   ➜ PERFORMANCE EDITION              ┃"
ui_print "┃ 🎮 GAMING MODE     ➜ ENABLED                          ┃"
ui_print "┃ 🚀 BOOST LEVEL     ➜ MAXIMUM                          ┃"
ui_print "┃ 🧠 MEMORY TUNING   ➜ ACTIVE                           ┃"
ui_print "┃ 🌡️ THERMAL PROFILE ➜ OPTIMIZED                        ┃"
ui_print "┃ 🔋 BATTERY PROFILE ➜ BALANCED                         ┃"
ui_print "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
ui_print " "

ui_print "╭──────────────────────────────────────────────────────╮"
ui_print "│ 🛡️ DEVICE COMPATIBILITY CHECK                        │"
ui_print "├──────────────────────────────────────────────────────┤"
ui_print "│ ✓ beryllium                                          │"
ui_print "│ ✓ dipper                                             │"
ui_print "│ ✓ equuleus                                           │"
ui_print "│ ✓ perseus                                            │"
ui_print "│ ✓ polaris                                            │"
ui_print "│ ✓ ursa                                               │"
ui_print "╰──────────────────────────────────────────────────────╯"
ui_print " "

ui_print "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
ui_print "┃ 📦 [ STAGE 01 ] BOOT IMAGE EXTRACTION                ┃"
ui_print "┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫"
ui_print "┃ 🔍 Scanning boot partition                           ┃"
ui_print "┃ 📂 Loading image structure                           ┃"
ui_print "┃ 📤 Extracting kernel payload                         ┃"
ui_print "┃ ⚙️ Preparing ramdisk environment                     ┃"
ui_print "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

dump_boot; # use split_boot to skip ramdisk unpack, e.g. for devices with init_boot ramdisk

ui_print " "

ui_print "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
ui_print "┃ 🔧 [ STAGE 02 ] KERNEL DEPLOYMENT                    ┃"
ui_print "┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫"
ui_print "┃ ⚡ Loading performance profile                      ┃"
ui_print "┃ 🧠 Applying memory optimizations                    ┃"
ui_print "┃ 🎮 Enabling gaming enhancements                     ┃"
ui_print "┃ 🌡️ Applying thermal strategy                        ┃"
ui_print "┃ 🛠️ Patching ramdisk configuration                   ┃"
ui_print "┃ 🚀 Injecting optimized kernel image                 ┃"
ui_print "┃ 🎯 Finalizing modifications                         ┃"
ui_print "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
ui_print " "

ui_print "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
ui_print "┃ 💾 [ STAGE 03 ] FLASHING                             ┃"
ui_print "┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫"
ui_print "┃ 📥 Repacking boot image                              ┃"
ui_print "┃ 📤 Writing target partition                          ┃"
ui_print "┃ 🔒 Syncing filesystem                                ┃"
ui_print "┃ ⚡ Final verification                                ┃"
ui_print "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk

ui_print " "

ui_print "║======================================================║"
ui_print "║                                                      ║"
ui_print "║            🎉 INSTALLATION SUCCESSFUL 🎉             ║"
ui_print "║                                                      ║"
ui_print "║          ⚡ K Y Z U N A   K E R N E L ⚡            ║"
ui_print "║                                                      ║"
ui_print "║            『 性能已解放 • READY TO GO 』            ║"
ui_print "║                                                      ║"
ui_print "║======================================================║"
ui_print " "

ui_print "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
ui_print "┃ ✅ Boot Image Patched                                ┃"
ui_print "┃ ✅ Kernel Installed                                  ┃"
ui_print "┃ ✅ Performance Profile Applied                       ┃"
ui_print "┃ ✅ Gaming Optimizations Loaded                       ┃"
ui_print "┃ ✅ Thermal Optimizations Loaded                      ┃"
ui_print "┃ ✅ Memory Optimizations Loaded                       ┃"
ui_print "┃ ✅ System Ready                                      ┃"
ui_print "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
ui_print " "

ui_print "╭──────────────────────────────────────────────────────╮"
ui_print "│ ⚡ PERFORMANCE  ▰▰▰▰▰▰▰▰▰▰ 100%                      │"
ui_print "│ 🎮 GAMING       ▰▰▰▰▰▰▰▰▰▰ 100%                      │"
ui_print "│ 🧠 MEMORY       ▰▰▰▰▰▰▰▰▰▰ 100%                      │"
ui_print "│ 🌡️ THERMAL      ▰▰▰▰▰▰▰▰▰▰ 100%                      │"
ui_print "│ 🔋 EFFICIENCY   ▰▰▰▰▰▰▰▰▰▰ 100%                      │"
ui_print "╰──────────────────────────────────────────────────────╯"
ui_print " "

ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print "             ⚡ K Y Z U N A • P R O J E C T ⚡"
ui_print " "
ui_print "             『 超级性能 • 极致流畅 • 稳定体验 』"
ui_print " "
ui_print "             🚀 REBOOT DEVICE AND ENJOY 🚀"
ui_print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print " "

## end boot install


## vendor_boot shell variables
#block=vendor_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# reset for vendor_boot patching
#reset_ak;

# vendor_boot install
#dump_boot;

#write_boot;
## end vendor_boot install


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
