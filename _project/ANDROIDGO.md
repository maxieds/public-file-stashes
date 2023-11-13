# AndroidGo - new platform deployment notes

## Chimera - X - MIME type `application/chimerax`

This is going to get really publicly big, bad and ugly. 
There was an X-Files episode about this - most about the 
technology actually, like the tobacco and COVID and HIV virus 
operations, ability to light / frequency / phone SCREEN activate 
synthetic substances like methamphetamine. Steve Wozniak said something 
about it around 2011 with SF-area TED talk (QANON) brainwashing intent 
and his irreverence on rare display. These people (TRUMP, Musk, Zuckerberg, 
Google / Eric Trump) are neo-nazis trying to realize the 1980's New World Order 
rhetoric. Efficient genocide like WWII Hitler in Europe is long gone and 
diluted by screwed up, inbred old, white, straight men high on too much 
cocaine (for those who can still afford it) or methamphetamine (the rest of them) 
who read the shortwave radio broadcasts of Charlie and His Orchestra literally like 
it is a precise blueprint. Regan or Pablo Escobar would have never screwed up something 
like January 6, 2021 insomuch as they would have done it quickly with tactical precision 
before anyone in opposition to their coup could have found out. It's really about something 
else for these misogynistic lazy men. Trump wants to *PLAY* with you before he kills you. 
Sophisticated classified technology in the hands of little children is irresponsible and used for 
what? Sex slavery and free dinner at 7-Eleven afterwards. 

Katie Couric point blank called Trump 
out for being a significant funding source (money laundering) of the terrorists that carried out 
9/11 (2001) in primetime coverage on non-cable NBC. 
The neo-nazis and Republicans then realized that their goals would not be attainable if 
the public had resolution and awareness at the level of understanding of the coverage by news outlets 
that happened then. The pro-Trump boards and shareholders of these corporations shut down that avenue 
for disemenating information at all - no, media bias is not the same thing as allowing 
(permiting, accepting, confirming, validating) engagement in free discussion and debate 
about current events that make Trump, et. al. look bad. Do not let these people brush all this under the 
rug yet again. Barack Obama on regress under Trump (paraphrase): *I fear no evil.* 
God on the Middle East (Biblical consensus): *Kill every God-damn one of them, save Israel.* 

TODO: Re-type the highlights of X/Twitter funding for Musk to take it over - DM / keep third party 
disclosure of Trump getting caught, penis slammed shut in the proverbial cookie jar from being used 
against him in court. Northern California + versions (revisions) of his *platform* being insisted as 
a legal basis / imprecisely fuzzy boundaries and sliding window where an asserted policy by the respondent (all to 
common tactic with copyright legalese - more details soon - keyboard presentations being viewed as a way to assert this on victims - it's not what you say, it's how you say it rhetoric is obnoxious) to stall for time in the proceedings. 
State sentences (independent state-level review boards to overturn four times over) versus federal indictments that can be pardoned or revoked by high enough ranking elected officials in the legislative branch whenever the agenda is covenient to realize at the time. Red haired snowboarder (X / what the sport really means) crazy overreaction to me talking with Liz Cheney for her congressional committee the day daddy bought Twitter led to Paul Pelosi (husband of a fellow committee member, 
Nancy Pelosi) being murdered (image repositories). Biden / actor / Kamala Harris + dead secret service members (NOT Mike Pence) in a closet under gun fire has only made one public appearance since then to eulogize Tyre Nichols in 2023 - Adam Schiff and Elizabeth Warren on the darkweb according to Fox News - Adam Kinsigner (IL, military man) similarly getting out of the way, out of politics, to make more kids with his wife away from Washington.

### New issues on Android

TODO: SPRD/Unisoc: behavior partially explained by the 
      winnt screenshots (cautionary tales about plugging in 
      found USB thumbdrive hardware); Chromebook will not recognize 
      it as a normal USB device despite USB transfer mode settings 
      set so that it should work in Developer Options;
      Note that a corporate development credit for UNISOC is 
      found on line 2 of `TODO*/com.spreadtrum.ims.xml` reading: 
      `TODO`.

TODO: Bluetooth BLE devices (including switches and LED light strips): 
   1. Ref to CMLD BT svc characteristics list 
   2. Refs to emsec/ChameleonMini rant + maxieds repo with the 
      Chameleon Tiny BT firmware 
   3. Refs to RRG/BT airplane mode strings 
   4. Logging of a local BLE device called `ELK-BLEDOM 0` has 
      biometric BLE sensor listings, values of characteristics 
      at `[]`, an exchange mode (ASCII or byte strings) given as 
      `SHY96K3R3MODEV100`, and can be used to lower the noise in 
      the environment by repeatedly (in a loop) writing `0x00` or 
      a zero-valued 20-byte string to a characteristic. 

TODO: Hidden device administrators: 
   1. Unable to clear large Media Storage cache 
   2. Disabled buttons to diabale or force stop apps in Settings
   3. Screenshots of Google suggestions 
   4. With a SIM card using a preset PIN (no PUK), and a phone 
      that requires a connection to WIFI or cellular mobile data to 
      initialize or factory reset, this is done covertly before a 
      user knows what is going on.
   5. Include the Work/Play Yellowstone image compilation

TODO: System apps (now easier for other to install):
1. Was the case for years that a system app (or service) required 
   a signature from a hard-to-get OEM manufacturer or from 
   Google. The preinstalled list of system certificates are found 
   in the directories: TODO + `*/etc/*.cer` and another source 
   inside `/system/apex/com.android.wifi/etc/security/cacerts_wfa/*.0`
2. Outline changes in all this. 
3. When this started to change? ... When did Google Play Store 
   Developer Console start to require uploads of application 
   updates in `*.aadb` format instead of a signed APK? 
   CMLD releases link to these binaries. Is the apparent 
   difference in installs based on repackaged AADB archives versus 
   developer signed APK binaries why the archive site 
   [APKPure.com](apkpure.com) is named as such - as in *PURE* 
   (or non-modified developer version of thee packaged app)? 
   The last archived version of the APKPure listing for CMLD 
   is TODO/link - dated at approximately TODO. 
4. When this started to change? (filesystem access) ... 
   AFPL: confgurations of locations (XML) + sane guesses at 
   default paths (JAVA) + FileProvider (JAVA source) + 
   note that POSIX attribute listings of files work only 
   occasionally with the Java file I/O interfaces badly broken 
   moving into Android SDK 29+ (Android 11 feature preview)
5. Hidden API keys for Google services (like Maps), Amazon AWS, 
   Facebook API keys, Firebase (before thee Google buyout) 
   and other related data could be viewed with the 
   *APK Analyzer* app on Google Play Store up until at least early 
   2018 (now missing from the AndroidGo app version despite other 
   improvements to the software). 
   Some examples include: CMLD (+firebase in sources) + 
   examples from malware repository 
   Github/maxieds/ThowingSomeOldBitsIntoAHoleOnGithub. 

TODO: Subsection on apps
1. Apps are installed in ways that differs from conventional 
   usage, or within network topologies that defy common 
   understanding of installing new software on a user's device. 
2. New Google sourced TLD `.app` (bought in 2015; active as of 2021) 
   that seems to read right-to-left to resolve an app context. 
3. Detailed information in full section below
4. [Android Developers - Handling Android App Links](https://developer.android.com/training/app-links)
5. Get information about BLU phone apps handling of link 
   types - also, note that how an intent signaling that an app 
   receiver handle an incoming link is not always initiated by the 
   end user, nor something that the end user will be notified has 
   taken place 
6. Link to `document-stashes/Publishing your app to Play Store Help.pdf`
7. Github/zonghai-li/adb-ios
8. Can an app link be resolved by loading a dynamic shared library 
   (see the example on line 164 of `/system/apex/com.android.art/etc/ld-config.txt`):
```bash
###############################################################################
# "adbd" APEX namespace
#
# This namespace is for libraries within the adbd APEX.
###############################################################################

namespace.adbd.isolated = true
namespace.adbd.visible = true

namespace.adbd.search.paths = /apex/com.android.adbd/${LIB}
namespace.adbd.asan.search.paths = /apex/com.android.adbd/${LIB}
namespace.adbd.links = system
namespace.adbd.link.system.shared_libs  = libc.so
namespace.adbd.link.system.shared_libs += libm.so
namespace.adbd.link.system.shared_libs += libdl.so
namespace.adbd.link.system.shared_libs += liblog.so
```

TODO: Noteworthy apps installed:
* `/system/app/BadicDreams,BluetoothMIDIService,CertInstaller,CompanionDeviceManager,HTMLViewer,NfcNci,PacProcessor,PlatformCaptivePortalLogin,ValidationTools`
* `/system/priv-app/CellBroadcastServiceModulePlatform,PlatformNetworkPermission*,MusicFX,MmsService`
* `/system/vendor/CameraIPControl` (note that the subsirectories in 
`/vendor/app` ([directory link](https://github.com/maxieds/public-file-stashes/tree/main/androidgo/_fsroot/vendor/app)) or
perhaps `/system/vendor/app` ([directory link](https://github.com/maxieds/public-file-stashes/tree/main/androidgo/_fsroot/system/vendor/app))
reflect the default set of apps that are preinstalled on the phone before any updates. This is concerning because there is integrated IP control of
so-called cameras (networked subject observers) by enabled by default even in the minimal install. 

TODO: Special hidden apps: 
1. `updateable-bcp-packages.txt`:
```bash
android.app
android.app.role
android.hardware.wifi
android.media
android.net
android.net.ssl
android.net.wifi
android.os
android.os.ext
android.permission
android.provider
android.util
com.android.internal.statsd
com.android.org.conscrypt
com.android.wifi.x
```
2. `deviceidle.xml`: Notice the alternate Facebook versions, 
   alternate Skype versions (raider is a reference used by many villains in VR-type games; M2 is an Apple/Intel processor variant that is newer and requires current `qemu` binaries to analyze), and the appearance of WhatsApp which is a common way of connecting to phone numbers on different networks. The contents of the file are as follows:
```bash
<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<config>
<wl n="com.tencent.mm" />
<wl n="com.sina.weibo" />
<wl n="com.tencent.mobileqq" />
<wl n="com.skype.raider" />
<wl n="com.skype.m2" />
<wl n="com.bbm" />
<wl n="com.facebook.katana" />
<wl n="com.whatsapp" />
<wl n="jp.naver.line.android" />
<wl n="com.twitter.android" />
<wl n="com.instagram.android" />
<wl n="com.facebook.orca" />
</config>
```
3. `blackAppList.xml` (reference to where these are loaded is in `TODO`):
```bash
<?xml version="1.0" encoding="utf-8"?>
<app_list>
<packageItem>
<pkg_name>com.pp.assistant</pkg_name>
</packageItem>
<packageItem>
<pkg_name>com.google.android.gms</pkg_name>
</packageItem>
<packageItem>
<pkg_name>com.android.vending</pkg_name>
</packageItem>
</app_list>
```

TODO: Extracting lists of common app handlers:
1. `/system/etc/dirty-image-objects`: list `app.*` and `com.android.*`
2. `android.software.wallpaper`

TODO: Frameworks: 
* See refs found in config files; Complete list of these where? 
* Elon name variants piss him off well (why it works); OTH 
  comments about challenging the Twitter platform (apparent 
  legal definition) after upgrades and questions about whether 
  to abstain from using Twitter (or Google): *Do you think it 
  pisses him (Musk) off more (for you to be) on his platform, or 
  off his platform? I think it pisses him off more to do it on 
  his platform.*
* Also, why 2600 Off the Hook (OTH) podcast episodes this summer correctly
  point out that how you choose to pronounce Elon (the first name of a man
  who is known to introduce himself to people as the Anglo-Christian Devil)
  irritates the f-ck out of him (try cadences to verify / accept / confirm
  this property). WHY? He in his head (like he may say out loud - thinking,
  in his head, he's thinking) believes that his first name is unpronouncable
  (much like God's name in the Torah). Does he understand his name? Anyone
  tried getting a coherent response from him on the topic yet?
* System/classes: examples encountered; Where to find an 
  ehaustive list and/or documentation about this? 
* Discussion of `/vendor/etc/parameter-framework/Structure/Policy*`

#### Topics

##### Neural networks

**(/system/apex/com.android.art/etc/ld.config.txt:Line-137):**
```bash
###############################################################################
# "neuralnetworks" APEX namespace
#
# This namespace is for libraries within the NNAPI APEX.
###############################################################################
namespace.neuralnetworks.isolated = true
namespace.neuralnetworks.visible = true

namespace.neuralnetworks.search.paths = /apex/com.android.neuralnetworks/${LIB}
namespace.neuralnetworks.asan.search.paths = /apex/com.android.neuralnetworks/${LIB}
# TODO(b/144533348): to allow symlinks pointing the libs under /system/lib
# Note that this however does not open all libs in the system partition to
# the APEX namespaces, because searching of the libs are NOT done in
# /system/lib, but in /apex/<module>/lib directory.
namespace.neuralnetworks.permitted.paths = /system/${LIB}
namespace.neuralnetworks.asan.permitted.paths = /system/${LIB}
namespace.neuralnetworks.links = system
namespace.neuralnetworks.link.system.shared_libs  = libc.so
namespace.neuralnetworks.link.system.shared_libs += libcgrouprc.so
namespace.neuralnetworks.link.system.shared_libs += libdl.so
namespace.neuralnetworks.link.system.shared_libs += liblog.so
namespace.neuralnetworks.link.system.shared_libs += libm.so
namespace.neuralnetworks.link.system.shared_libs += libnativewindow.so
namespace.neuralnetworks.link.system.shared_libs += libneuralnetworks_packageinfo.so
namespace.neuralnetworks.link.system.shared_libs += libsync.so
namespace.neuralnetworks.link.system.shared_libs += libvndksupport.so
```
Topics related to neural networks include:
* Transistor device usage (SNL)
* Uses in text-to-audio processing/prediction/presentation

### Observations 

TODO: Res/images look like Lithium ion battery image (get image) -- give ref to the files; hypothesis (like beandip in physics) that 
the third data port on these batteries can be used to extract a lot 
of data as though the battery were capable of being a 
(SSD) hard drive 

TODO: MMS commands (or accessibility/TTY/input device shortcuts) 
are somehow used to control the phone remotely. How are these 
logged and/or exchanged? This is somewhat like the underexplained 
zealotry behind why someone prefers `emacs` to `vim` as a text 
editor? 

TODO: STK (or modem) commands: See sattelite imagery credits. 

TODO: ValidationTools and UASettings seem to dictate Work/Play roles 
(as in the old Archie Unix joke: *All work and no play makes 
Jack a very dull boy*). What does this mean? TODO: Image with 
Yellowstone examples of the uses of these terms. 

TODO: Overlay uses + wallpaper + themes + icons; 

TODO: Features defined (enabled/disabled in build) by 
      `/vendor/etc/PCBA.conf` ([link here](); see also 
      `BBAT.conf`) include: 
      `WIRELESSCHARGE,MAINLOOP`. 

TODO: GSM===GMS, also slightly obscured references to technology reuses: 
```bash
/vendor/lib/egl/libELES_mali.so === GoogleLENS
```

TODO: Logging done with YLog: `/system/etc/analyzer.py` to 
parse the logs generated (reproduce scene type descriptions 
from running the YLog activity); Descriptions of log tags 
(ytags, as opposed to hashtags) are found in `/system/etc/event-log-tags`

TODO: Uses of: SMART (abbreviation), AMP, Open Mobile ABI, others?

### Open questions about new behavior

* Uses of reseting the Google advertising ID
* Specs of USB OTG, USB gadgets (versus gizmos), and accessories 
* In the same way that ARP (caches) restricted wired ethernet, 
  does the (non-uniquely-generated) HW-ADDR for 
  Bluetooth/WIFI hardware MAC address (or say for a service UUID) 
  do either of the following:
  1. Change the network capabilities; or 
  2. Help / ensure authentication to external networks online?
* How do we precisely pin down (verify) the Play Store sources 
  like we would when configuring a Linux package manager like 
  the Debia `apt` package sources list? These change 
  depending on how the Android (Chromebook) system is setup 
  - with things even worse due to hotplugging of app sources 
  (see [this video for AI-related listings of iOS AppStore apps]())).
* Look at the YLogForms (or Python `pandas` or FLTK library 
  forms components). The information should be like PDF forms? 
  Note that online signing of versions of PDF document versions 
  is a common operation on the darkweb. A similar way of signing 
  app sources with weak credentials may be how some of these 
  system apps get past the old doors on the system. 
* What was the use of the 2004-era application 
  [vlevel.sourceforge.net](vlevel.sourceforge.net)? 
* In the early 2000's, [SourceForge.net](sf.net) had software 
  that could take a MP3 music file and translate its source 
  into output from a CRT monitor that was tunable with a 
  RadioShack frequency scanner to a frequency that played the song 
  (otherwise outside of the human hearing spectrum)? Do we 
  have good sources for the equivalant proof-of-concept 
  (demonstration-of-point) with the LED/LCD phone screens today? 
  What about software that can emit a certain frequency (of light) 
  with the screen?
* Does the app hotswapping extend to dynamic loading of shared 
  libraries like `libboost` (boot / booty / human trafficking deceptive code language from anti-clever pseudo-intellectual little boys who talk to much amidst the current events while the crucifiction of Donald Trump is still in progress in Atlanta, Georgia, USA, North America, Earth? Most PC compiled programs with this 
  library have presumably linked a C++ scientific processing source. 
  The following configuration files suggest alternate (covert, of course) uses of the terminology: TODO. 
  My familiarity with Boost was an essay question I was asked 
  in an online screening interview for a trading company software 
  engineer role in C++. 
* Do online job site listings requesting applications from 
  experienced FullStack developers really make reference to 
  familiarity with and insider knowledge of the uses of the 
  apps in `/vendor/overlay/NetworkStack*.apk` ([link to directory]())?
* How do he uses of media and DRM (like `drmrpc`) fit in with 
  copyright law? What can we add from this discussion to the 
  *De Santis versus Disney* debates and coverage? WAY MORE TO ADD THAN THIS SOON!
* Does the `EV2` field in `TODO` ([directory link]()) 
  have anything to do with the Phillips/NXP 
  DESFire EV2 tag versions over NFC? Note that the fields in a 
  readable file on a DESFire EV1 tag I have viewed remind me 
  of the binary (non-ascii text) contents of 
  `TODO` ([file link]()) or `TODO` ([file link]()). 
* List of binary files not processed: 
  `*.db, *.pb, *.tflite, *.pbtext/binary, *.xml (run aapt)`, `*.pcm`, `*/textclassifier/*.model`, `smart_amp*.bin`, binary 
  `/vendor/etc/*.conf` files, `adb.iso`, etc. 

### More detailed information about the phone software and hardware 

#### Limited (non-root) command line output with Qute

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

#### Commands interpreted by the device (how to invoke this is unclear - apparent MMS / MMC / MMI interface over covert always watching eye on bluetooth-USB-WIFI-celldata)

```bash
svc, appops, pwctl, ss, fuse, apr, netmon,  ylog_cli, ylogctl, ss, cmd-l
```

