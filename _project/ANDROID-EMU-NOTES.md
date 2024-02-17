# Useful clues / hints to interface with an Android device

## Obtaining extra information with `fastboot` or `adb`

The phone can be put into a mode that will accept `fastboot` 
commands over a USB connection by powering the device on with 
a special keypress combination. On my phone, we have to power the 
phone completely off, and then power it back on by pressing 
power and volume-down at the same time. One of the menu options 
that appears in recovery mode is to this mode (or to enter the 
bootloader). 

Here are some useful `fastboot` commands: 
```bash
## Get (or set) device properties:
$ fastboot oem <device-info|setbrightness|get_config|
                set_config|rm_config|esim_erase|esim_atp|uart|
                HALT|sha1sum|ddrtest|ramdump|dmesg|rma|
                ramdump_sahara|dump-chipid|check-hw-securiity|
                get_platform_info|set_platform_info|
                select-display-panel|off-mode-charge|
                set_display_power_mode|enable-factory-lock|
                factoty-lock|continue-factory>
$ fastboot getvar <battery-status|battery-voltage|boot-mode|
                   build-mode|cidnum|gencheckpt|imei|meid|modelid|
                   partition-layout|platform|product|product|
                   security|serialno|version|version-baseband|
                   version-bootloader|version-cpld|version-main|
                   version-microp|version-misc>

## Flashing procedure (outline):
$ fastboot oem unlock
$ fastboot flashing unlock
# ... flashing commands ...
$ fastboot oem lock
$ fastboot flashing lock
$ fastboot reboot [recovery|bootloader]

## Flashing commands: 
## The supported binary formats are TwRP or a system imge or a 
## flashable ZIP archive.

$ fastboot flash <OPT-COMPONENT>> <IMG-BIN-BASENAME>.<IMG-BIN-FEXT>
# ... for: (OPT-COMPONENT, IMG-BIN-FEXT) one of 
#          (boot, img), (system, img), (recovery, img), 
#          (cache, img), (modem, bin), (sbll, mbn), (dbi, mbn), 
#          (aboot, mbn), (rpm, mbn), (tz, mbn), 
#          (LOGO, bin), (recovery, zip)

$ fastboot -w flashall
$ fastboot erase <WHICH>
$ fastbooot flash <wHICH> <WHICH>.img
# ... for: WHICH one of system, data, cache, userdata

# Alternate way to flash prepared updates:
$ fastboot update Update.zip

# Boot into a fixed TWRP image:
$ fastboot boot recovery twrp.img
```
Here are some useful `adb` commands:
```bash
$ adb settings list [secure|global|system]
$ adb list <users|permissions|permission-groups|staged-sessions>
$ adb shell pm list <permission-groups|features|libraries|users>
$ adb pm list packages
$ adb dump package <PKG-NAME>
$ adb shell dumpsys netstats detail
$ adb dumpsys package com.ex.myapp
$ adb shell dumpsys <SVC-NAME|bluetooth_manager>
$ adb shell settings put <secure|global|system> <STG-NAME> <VALUE>
$ adb shell pm clear com.google.android.providers.media.module

## List content providers and query their contents:
$ adb shell dumpsys | grep Provider{
$ adb shell content query --uri content://com.myapp.authority/path 
      --where column=x -- arg 1 --sort column_name <DESC>

## Download / upload copies of hard-to-get system files: 
$ adb shell ls -laR
$ adb push <LOCAL-FILE-PATH> <REMOTE-FILE-PATH>
$ adb pull <REMOTE-FILE-PATH> <LOCAL-FILE-PATH>
```

## More detailed information about the phone software and hardware (Android Go)

### Limited (non-root) command line output with Qute

```bash
$ pm get-moduleinfo --all
$ service list
# ... highlights include: 
user, uri_grants, servicediscovery, searc, role, netstats, midi, 
media_session, media_router, lights, mms, dropbox,dreams, 
device_policy, device_identifiers, audio, biometric, storagestats
$ getprop/setprop
# ... highlights include:
wifi_direct, persist.*, persist.radio.stk.commandqualifier, 
init.svc.usbd, init.svc.sprd_network_control, 
init.svc.cmd_services, init.svc.audio_server
```

### Commands interpreted by the device (how to invoke this is unclear - apparent MMS / MMC / MMI interface over covert always watching eye on bluetooth-USB-WIFI-celldata)

```bash
svc, appops, pwctl, ss, fuse, apr, netmon,  ylog_cli, ylogctl, ss, cmd-l
```
