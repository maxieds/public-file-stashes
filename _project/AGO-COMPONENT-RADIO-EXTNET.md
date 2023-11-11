# AndroidGo network configuration with extended radio hardware

The conventional International GSM cellular network type is renamed to GMS throughout the 
AndroidGo system files. One of the key features of the 
SPRD (kitchen sink - does everything really, more than it should, over networked up every orifice because it can - 
in part an extension of the UNISOC phone) 
functionality is the use of extended frequency tuning and data exchange. 
For example, the low-level cellular network parameters are setup in 
[this configuration file](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/radioPowerFallback-conf.xml) (GSM, ECDMA, LTE networks). 
The `EngineerMode` system application can be run from a command line with sufficient 
user privileges with the command `/vendor/bin/engpc`. The functionality of the application 
on the Android device can be explored by installing *APK Analyzer* and then launching the main 
activities with that application. 

## File `/system/etc/spn-conf.xml` 

A link to the [file is provided here](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/spn-conf.xml). 
The format of entries in the file is of the following form:
```bash
<spnOverride numeric="405924" spn="Cheers"/>
<spnOverride numeric="405932" spn="Videocon"/>
<spnOverride numeric="537030" spn="DIGICEL"/>
<spnOverride numeric="544110" spn="BLUESKY"/>
<spnOverride numeric="616004" spn="BBCOM"/>
<spnOverride numeric="654001" spn="HURI"/>
<spnOverride numeric="714020" spn="movistar"/>
<spnOverride numeric="722070" spn="Movistar"/>
<spnOverride numeric="722310" spn="CLARO AR"/>
<spnOverride numeric="722340" spn="AR PERSONAL"/>
```
 
## File `numeric_operators.xml`: 

A link to the [file is provided here](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/vendor/etc/numeric_operator.xml). 
The format of entries in the file is of the following form:
```bash
<item>2761=One.al</item>
<item>54411=Bluesky</item>
<item>544110=Bluesky Communications</item>
<item>365840=FLOW</item>
<item>7227=AR - Movistar</item>
<item>722310=CLARO AR</item>
<item>72234=AR PERSONAL</item>
<item>2835=MTS ARM</item>
<item>3631=SETAR</item>
<item>2083=MobiquiThings</item>
<item>4107=Jazz</item>
<item>2426=Ice</item>
<item>2403=Ice.net</item>
<item>2409=djuice</item>
<item>24436=DNA - Sonera FI</item>
<item>311580=U.s.Cellular</item>
<item>312180=Limitless Mobile</item>
<item>312720=Southern Linc</item>
```
Some interesting entries in the configuration file mapping integer codes to operator names include: 
```bash
Verizon, Sprint, SoftBank Moble Corp, *USA*, *Sky*, AISatSea, Smart, Free, 
Southern Linc (where QUINN is noted to be an abbreviation for Queen of the South),
Jasper, Northstar, PACE, Tampnet, Limitless Wireless, Cincinatti Bell, Highland,
Smile*, Sky UK Telecom, *BT*, *AMP*, Concho, Iowa Wireless*, Verisign [BIG-BAD-HINT!!!]
```
There are some smelly symptoms of attacks on entire classes of operators like `ru` by country 
seen in [this ECC configuration file](https://github.com/maxieds/public-file-stashes/blob/androidgo-system-dirs-full/androidgo/_fsroot/system/etc/eccList-conf.xml). 
Disabling encryption on cellular networks for large geographic regions is dangerous. The apparent removal of electric-curve-cryptography shown in this 
configuration file is a problem for others tied to Android (now AndroidGo) phones. The sources for this OS are being deployed along with AI, a lot of extra very 
permissive and hastily hacked hardware running on these devices to let anyone approved by the OS owners access, and obvious instances of websites (like Github) 
that partition nodes according to apps and caste classifications which are arbitrary. This occurs partially along different network types (like sattelite interfaces to radio/RF) 
and may be hacked as low as switches made by Oracle. The deployment in the USA is done intentionally over the last few weeks to coincide with downtimes of communications like voice and 
email as Donald Trump continues to assert that he cannot be put to trial. 

## File `volte-conf.xml`: 

A link to the [file is provided here](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/volte-conf.xml). 
The format of entries in the file is of the following form:
```bash
<allowPlmn numeric="45611" enable="true" confuri="sip:1234;phone-context=ims.mnc011.mcc456.3gppnetwork.org@ims.mnc011.mcc456.3gppnetwork.org;user=phone"/>
<allowPlmn numeric="46605" enable="true" confuri="sip:APT_CONF@volte.aptg.com.tw"/>
<allowPlmn numeric="37002"   apn="sos" xcap="xcap.ims.mnc002.mcc370.pub.3gppnetwork.org:8080" bsf="bsf.ims.mnc002.mcc370.pub.3gppnetwork.org:8080"/>
<allowPlmn numeric="60202" xcap="xcap.ims.mnc002.mcc602.3gppnetwork.org" confuri="sip:mmtel@conf-factory.ims.mnc002.mcc602.3gppnetwork.org"
           bsf="bsf.ims.mnc002.mcc602.pub.3gppnetwork.org" cameraresolution="4"/>
<allowPlmn numeric="72402" enable="true" confuri="tel:1234"/>
<allowPlmn numeric="33420" enable="true" cameraresolution="3"/>
<allowPlmn numeric="334020" enable="true" cameraresolution="3"/>
<allowPlmn numeric="41302" enable="true" cameraresolution="4"/>
<allowPlmn numeric="334030"  confuri="sip:conference@factory.ims.movistar.mx" bsf="bsf.ims.mnc030.mcc334.pub.3gppnetwork.org"/>
<allowPlmn numeric="33403"  confuri="sip:conference@factory.ims.movistar.mx" xcap="xcap.ims.mnc030.mcc334.pub.3gppnetwork.org"/>
```

## File `spn-conf.xml`: 

A link to the [file is provided here](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/spn-conf.xml). 
The format of entries in the file is of the following form:
```bash
<spnOverride numeric="72424" spn="AMAZONIA"/>
<spnOverride numeric="72431" spn="Oi"/>
<spnOverride numeric="73008" spn="VTR"/>
<spnOverride numeric="74001" spn="PORTA GSM"/>
<spnOverride numeric="74401" spn="VOX"/>
<spnOverride numeric="74404" spn="Telecel"/>
<spnOverride numeric="74405" spn="Personal"/>
<spnOverride numeric="74602" spn="TeleG"/>
<spnOverride numeric="74603" spn="DIGICEL"/>
<spnOverride numeric="90114" spn="AeroMob"/>
<spnOverride numeric="90115" spn="OnAir"/>
<spnOverride numeric="90117" spn="Navitas"/>
<spnOverride numeric="90121" spn="Seanet"/>
<spnOverride numeric="302220" spn="TELUS"/>
<spnOverride numeric="302350" spn="FIRST"/>
<spnOverride numeric="302370" spn="Fido"/>
<spnOverride numeric="302490" spn="WIND"/>
<spnOverride numeric="302720" spn="SpeakOut"/>
<spnOverride numeric="302730" spn="TStarSol"/>
```

## File `/system/etc/old-apns-conf.xml`:

A link to the [file is provided here](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml). 

### Tag fields with common repeated entries (not exhaustive)

```bash
type=dun,fota,mms,ims
apn=internet,minternet,isp,ppwap,zmms,modem,broadband,ims,mms,mmsc,orangemms,web,hos,multimedia,hms
proxy=wap
mvno_type="<STRING>"
mvno_match_data="<STRING>"
editable="0|1"
user_editable="0|1"
user_visible="0|1"
```

### Unusual patterns to notice

Some interesting variations of the APNs in the long file include:
* Empty fields like `apn=""`
* Non-zero integer values that start with zero: `mnc="020"` 
* Ports that are commonly used elsewhere: `80,8080,443`
* Carrier field strings that are numeric: 
  ```bash
  <apn carrier="3"
        mcc="505"
        mnc="06"
        apn="3services"
        mmsproxy="10.176.57.25"
        mmsport="8799"
        mmsc="http://mmsc.three.net.au:10021/mmsc"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl,mms"
        authtype="3"
    />
  ```
* Notice the trailing dot in the `server` field for the next entry:
  ```bash
  <apn carrier="Claro AR wap"
        mcc="722"
        mnc="310"
        apn="wap.ctimovil.com.ar"
        proxy="170.51.255.240"
        port="8080"
        server="http://portalwap.ctimovil.com.ar:8582/ctiwap.wm."
        user="ctigprs"
        password="ctigprs999"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    ```
* APN names that end with `<svc-protocol>` or `.<svc-protocol>` where the last protocol will resolve: 
  ```bash
  <!-- Australia Telstra-->
    <apn carrier="Telstra Internet"
        mcc="505"
        mnc="01"
        apn="telstra.wap"
        type="default,supl"
        protocol="IP"
        roaming_protocol="IP"
        traffic_class="4"
    />
    <apn carrier="Telstra MMS"
        mcc="505"
        mnc="01"
        apn="telstra.mms"
        mmsproxy="10.1.1.180"
        mmsport="80"
        mmsc="http://mmsc.telstra.com:8002"
        type="mms"
        protocol="IP"
        roaming_protocol="IP"
        traffic_class="4"
    />
    <apn carrier="ims"
        mcc="505"
        mnc="01"
        apn="ims"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="ims"
    />
  ```
* Non-numeric IP addresses need to be run through DNS. This setup can change along the network, or 
  recently, may be variable depending on the node's location relative to network topologies traversed 
  with sensitivity to apps running, their deep-linked state, whom else has the authority to modify 
  the requests or traffic on the networks/protocols atop of them, ad nauseum.
* Servers of `server="google.com"` or `server="wap.google.com"`
* There is the URL: `gprsconnect.com`
* Imprecise HTTP URLs: `mmsc="http://mmsc"` 
* Transposition of letters in services: `gsm <=> gms` or `wap <=> was`
* `mvnom*` fields and values that determine APN selection (some good examples)
* There is a GPRS app on my phone. Would some of these carriers pass links along to it?
* Does the code AR correspond to the country, Argentina, or to some facet of the 
  VR/AR (VirtualReality/AugmentedReality) primary research area of Facebook parent company META?

### List of interesting search terms 

The following list provides some keywords that may be useful:
```bash
sprs, smart, gsm, ims, sprd, spn, postpaid, prepaid, tel, mobil, wan, lte, volte, vip,
nextel, entel, tele2, beeline, movistarm mobi, rovi, hub, bob, vivo, play, new, world,
spark, T-Mobile, orange, RED, Airtel, Vodafone, star, life, 2g, 3g, 4g, isp, gms, gprs,
zain, sain, talk, ovivo, tesco, joe, sim, sun, surf, sbw, telia, tone, lycamobil, spm, apn, ais, mobile, web,
cell, idea, edge, hot, bt, tmobil, free, payg, eng, three, eco, pix, media, epic, pic,
at&amp;t. 
```
An observation to note is that the [carrier ZAIN for South Africa](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L23831) 
is similar to entries that involve `Zain` for Saudi / Middle East APNS. Another reuse of this type is found in 
[this APN for Sudan](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L24159). 

### Higlighted examples

#### Links to the start of APN definitions for a few countries

The countries below appear directly in the configuration file. Other `en_US` strings for countries 
like `China` have entries in `numeric_operators.xml` above. Here are pointers to the APN listings 
for a few notable tags to check out: 
[Ukraine](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L26453), 
[Israel](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L17090), 
[Lebanon](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L18191), 
[Netherlands](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L20064), 
[Russia](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L22125) 
(cf. the notes about `eccList-conf.xml` above except for `911`), 
[Egypt](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L6556), 
[South Africa](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L23639), 
[Chile](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L552) 
(cf. progressive neurorights discussions), 
[Colombia](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L5582), 
[Mexico](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L19287), 
[Vietnam](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L25604), 
[India](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L12467), 
[Syria](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L24567), 
[Turkey](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L25288), 
[US / USA](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L26826), and 
[Virtual operators](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L28767). 
Some other interesting entries to flag the start of listings for include: 
[Meteor](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L17042) (cf. Zinger), 
[Tesco](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L17078), and 
[BITE](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L18287). 

#### Examples using match data

```bash
<apn carrier="0677 web"
        mcc="232"
        mnc="07"
        apn="webaut"
        authtype="1"
        mvno_type="imsi"
        mvno_match_data="23207718XXXXXXX"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
<apn carrier="Telia DK"
        mcc="238"
        mnc="20"
        apn="www.internet.mtelia.dk"
        mvno_type="imsi"
        mvno_match_data="2382010"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,supl"
    />
<apn carrier="EE Internet"
        apn="everywhere"
        mcc="234"
        mnc="33"
        user="eesecure"
        password="secure"
        authtype="1"
        mvno_type="spn"
        mvno_match_data="Orange"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
<apn carrier="callmobile.de"
        mcc="262"
        mnc="01"
        apn="internet.t-mobile"
        user="t-mobile"
        password="tm"
        mmsc="http://mms.t-mobile.de/servlets/mms"
        mmsproxy="172.28.23.131"
        mmsport="8008"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl,mms"
        mvno_type="spn"
        mvno_match_data="callmobile.de"
    />
<apn carrier="Vodafone Pre Pay"
        apn="pp.vodafone.co.uk"
        mcc="234"
        mnc="15"
        user="wap"
        password="wap"
        authtype="1"
        mvno_type="imsi"
        mvno_match_data="23415xxx89xxxxx"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
```

#### Poland Play

```bash
<!-- Poland Play -->
    <apn carrier="Play Internet"
        mcc="260"
        mnc="06"
        apn="internet"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
        traffic_class="4"
    />
    <apn carrier="Play MMS"
        mcc="260"
        mnc="06"
        apn="mms"
        mmsproxy="10.10.25.5"
        mmsport="8080"
        mmsc="http://10.10.28.164/mms/wapenc"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
        traffic_class="4"
    />
```

#### Philippiness SUN

```bash
    <!-- Philippiness SUN -->
    <apn carrier="SUN INTERNET"
        mcc="515"
        mnc="05"
        apn="minternet"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="SUN GPRS"
        mcc="515"
        mnc="05"
        apn="wap"
        proxy="202.138.159.78"
        port="8080"
        server="http://wap.suncellular.com.ph"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="SUN MMS"
        mcc="515"
        mnc="05"
        apn="mms"
        mmsproxy="202.138.159.78"
        mmsport="8080"
        mmsc="http://mmscenter.suncellular.com.ph"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
    />
```

####  Georgia Geocell

```bash
    <apn carrier="Geocell Internet"
        mcc="282"
        mnc="01"
        apn="internet"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="Geocell MMS"
        mcc="282"
        mnc="01"
        apn="mms"
        mmsproxy="10.11.240.7"
        mmsport="8080"
        mmsc="http://mms.geocell.com.ge/cmmsc/postAPN"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        authtype="1"
        type="mms"
    />
```

#### Misc - laundry list

```bash
<apn carrier="3(2G) MMS"
        mcc="454"
        mnc="04"
        apn="mobile.three.com.hk"
        mmsproxy="172.20.97.116"
        mmsport="8799"
        mmsc="http://mms.um.three.com.hk:1002/mmsc"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
        authtype="3"
    />
    <apn carrier="3"
        mcc="454"
        mnc="05"
        apn="mobile.three.com.hk"
        mmsproxy="172.20.97.116"
        mmsport="8799"
        mmsc="http://mms.um.three.com.hk:10021/mmsc"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,mms,supl"
        authtype="1"
    />
    <apn carrier="3 LTE"
        mcc="454"
        mnc="05"
        apn="mobile.lte.three.com.hk"
        mmsproxy="172.20.97.116"
        mmsport="8799"
        mmsc="http://mms.um.three.com.hk:10021/mmsc"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,mms,supl"
        authtype="1"
    />
    <apn carrier="3 Share"
        mcc="454"
        mnc="05"
        apn="share.lte.three.com.hk"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="dun"
        authtype="1"
    />
    <!-- Argentina -->
    <apn carrier= "Movistar WAP"
        mcc="722"
        mnc="07"
        apn="wap.gprs.unifon.com.ar"
        user="wap"
        password="wap"
        authtype= "3"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
        proxy="200.5.68.10"
        port="8080"
    />
    <apn carrier= "Movistar MMS"
        mcc="722"
        mnc="07"
        apn="mms.gprs.unifon.com.ar"
        user="mms"
        password="mms"
        authtype= "3"
        mmsc="http://mms.movistar.com.ar"
        proxy="200.068.032.239"
        port="8080"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
    />
    <apn carrier="AR-Movstar Web"
        mcc="722"
        mnc="10"
        apn="internet.gprs.unifon.com.ar"
        user="wap"
        password="wap"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
        authtype="1"
    />
    <apn carrier="Personal wap"
        mcc="722"
        mnc="341"
        apn="gprs.personal.com"
        proxy="172.16.0.20"
        port="8080"
        server="http://wap.personal.com.ar"
        user="gprs"
        password="adgj"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="Personal mms"
        mcc="722"
        mnc="341"
        apn="mms.gprs.unifon.com.ar"
        mmsproxy="172.25.7.31"
        mmsport="8080"
        mmsc="http://mms.personal.com"
        user="mms"
        password="mms"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
    />
    <apn carrier="A1 Internet"
        mcc="232"
        mnc="01"
        apn="a1.net"
        user="ppp@a1plus.at"
        password="ppp"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
        authtype="1"
    />
    <apn carrier="A1 MMS"
        mcc="232"
        mnc="01"
        apn="free.A1.net"
        mmsproxy="194.48.124.71"
        mmsport="8001"
        user="ppp@a1plus.at"
        password="ppp"
        mmsc="http://mmsc.A1.net"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
        authtype="3"
    />
    <apn carrier="tele.ring web"
        mcc="232"
        mnc="07"
        apn="web"
        user="web@telering.at"
        password="web"
        protocol="IPV4V6"
        roaming_protocol="IP"
        type="default,xcap,supl"
        authtype="1"
    />
    <!-- Austria bob -->
    <apn carrier="bob.data"
        mcc="232"
        mnc="11"
        apn="bob.at"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
        authtype="1"
    />
    <apn carrier="data.bob MMS"
        mcc="232"
        mnc="11"
        apn="mms.bob.at"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        mmsproxy="194.48.124.7"
        mmsport="8001"
        user="data@bob.at"
        password="ppp"
        mmsc="http://mmsc.bob.at"
        type="mms"
        authtype="3"
    />
    <!-- Poland Orange -->
    <apn carrier="Orange Internet"
        mcc="260"
        mnc="03"
        apn="internet"
        user="internet"
        password="internet"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="MMS Orange"
        mcc="260"
        mnc="03"
        apn="mms"
        mmsproxy="192.168.6.104"
        mmsport="8080"
        user="mms"
        password="mms"
        mmsc="http://mms.orange.pl"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
        traffic_class="4"
    />
    <apn carrier="Telemig MMS"
        mcc="724"
        mnc="19"
        apn="mmsgprs.telemigcelular.com.br"
        mmsproxy="200.192.230.142"
        mmsport="8080"
        user="celular"
        password="celular"
        mmsc="http://mms.telemigcelular.com.br"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
    />
    <apn carrier="Swift LTE"
        mcc="621"
        mnc="26"
        apn="lte.swiftng.com"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="Spring data"
        mcc="240"
        mnc="10"
        apn="data.springmobil.se"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="Spring MMS"
        mcc="240"
        mnc="10"
        apn="mms.springmobil.se"
        mmsc="http://mms.springmobil.se"
        mmsproxy="213.88.184.37"
        mmsport="8080"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
    />
    <apn carrier="Halebop Internet"
        mcc="240"
        mnc="17"
        apn="halebop.telia.se"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="Halebop MMS"
        mcc="240"
        mnc="17"
        apn="mms.telia.se"
        user="mms"
        password="telia"
        mmsc="http://mmss"
        mmsproxy="193.209.134.132"
        mmsport="9201"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
    />
    <!-- Switzerland Swisscom -->
    <apn carrier="Swisscom Services"
        mcc="228"
        mnc="01"
        apn="gprs.swisscom.ch"
        server="http://mobile.swisscom.ch/"
        protocol="IP"
        roaming_protocol="IP"
        type="default,supl"
    />
    <!-- Switzerland Orange -->
    <apn carrier="Salt Internet"
        mcc="228"
        mnc="03"
        apn="internet"
        server="http://salt.ch"
        protocol="IP"
        roaming_protocol="IP"
        type="default,supl"
        authtype="1"
    />
    <apn carrier="Salt MMS"
        mcc="228"
        mnc="03"
        apn="mms"
        mmsproxy="192.168.151.2"
        mmsport="8080"
        mmsc="http://192.168.151.3:8002"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
    />
    <apn carrier="Salt IMS"
        mcc="228"
        mnc="03"
        apn="ims"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="ims"
    />
    <apn carrier="Salt XCAP"
        mcc="228"
        mnc="03"
        apn="hos"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="xcap"
    />
    <apn carrier="Sure Internet"
        mcc="234"
        mnc="09"
        apn="internet"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="Sure Smart Internet"
        mcc="234"
        mnc="09"
        apn="data2.gprs.cw.com"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="default,xcap,supl"
    />
    <apn carrier="Sure MMS"
        mcc="234"
        mnc="09"
        apn="mms"
        mmsproxy="10.0.3.101"
        mmsport="80"
        mmsc="http://mmsc.gprs.cw.com/"
        protocol="IPV4V6"
        roaming_protocol="IPV4V6"
        type="mms"
    />
    <apn carrier="O2 Pay As You Go"
        mcc="234"
        mnc="10"
        apn="payandgo.o2.co.uk"
        user="payandgo"
        password="password"
        mmsproxy="193.113.200.195"
        mmsport="8080"
        mmsc="http://mmsc.mms.o2.co.uk:8002"
        protocol="IP"
        roaming_protocol="IP"
        type="default,supl,mms,xcap"
        authtype="1"
    />

   <apn carrier="O2 Mobile Web"
        mcc="234"
        mnc="10"
        apn="mobile.o2.co.uk"
        user="o2web"
        password="password"
        protocol="IP"
        roaming_protocol="IP"
        type="default,supl,xcap"
        authtype="1"
    />

    <apn carrier="O2 MMS"
        mcc="234"
        mnc="10"
        apn="wap.o2.co.uk"
        user="o2wap"
        password="password"
        mmsproxy="82.132.254.1"
        mmsport="8080"
        mmsc="http://mmsc.mms.o2.co.uk:8002"
        protocol="IP"
        roaming_protocol="IP"
        type="mms"
        authtype="1"
    />
```

#### More line numbers to tags to check out

[Line-19385](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L19385), 
[Line-194173](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L194173), 
[Line-20080](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L20080), 
[Line-23316](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L23316), 
[Line-22525](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L22525), 
[Line-23182](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L23182), 
[Line-21285](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L21285), 
[Line-21763](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L21763), 
[Line-2823](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L2823), 
[Line-2886](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L2886), 
[Line-2963](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L2963), 
[Line-3350](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L3350), 
[Line-1861](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L1861), 
[Line-3567](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L3567), 
[Line-1161](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L1161), 
[Line-1181](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L1181), 
[Line-1194](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L1194), 
[Line-20612](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L20612), 
[Line-20253](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L20253), 
[Line-30573](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L30573) 
(*Lycamobile DE/IT/NL*), 
[Line-30718](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L30718), 
[Line-31290](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L31290), 
[Line-31317](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L31317), 
[Line-26741](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L26741) (count 3), 
[Line-29643](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L29643) (count 3), 
[Line-29717](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L19717) (count 2), 
[Line-30201](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L30201) (count 2), 
[Line-28875](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L28875), 
[Line-31023](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml#L31023). 
