Twrp Device Tree for Xiaomi Redmi 7/Y3 (onclite/onc)
===========================================

The Xiaomi Redmi 7 (codenamed _"onclite"_) and Xiaomi Y3 (codenamed _"onc"_) is a mid-range smartphone from Xiaomi.
It was announced on March, 2019.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core (4x1.8 GHz Kryo 250 Gold & 4x1.8 GHz Kryo 250 Silver)
Chipset | Qualcomm SDM632 Snapdragon 632 (14 nm)
GPU     | Adreno 506
Shipped Android Version | 9.0
Memory | 64 GB, 4 GB RAM or 32 GB, 3 GB RAM
MicroSD | microSD, up to 512 GB (dedicated slot)
Battery | Non-removable Li-Ion 4000 mAh battery
Display | 6.26 inches, 97.8 cm2 (~81.5% screen-to-body ratio)
Rear Camera  | 12 MP, f/1.8, 1.25µm, PDAF
Front Camera  |  8 MP, f/2.0, 1.12µm

![Xiaomi Redmi 7](https://i.gadgets360cdn.com/products/large/1552901002_635_redmi_7.jpg?downsize=770:*&output-quality=70&output-format=webp "Xiaomi Redmi 7")

## Features

This TWRP automatically detects the device region and updates the device code name _"onclite"_ or _"onc"_

Bugs:

- Decryption of /data 
- Mount of /vendor
- Backup/Restore (Needs more testing)
- USB OTG (Needs more testing)

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/xiaomi/onclite" name="KostyaJRZ/android_device_xiaomi_onclite-twrp" remote="github" revision="android-9.0" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_onclite-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

Install:

```
fastboot flash recovery recovery.img
```

