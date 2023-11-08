# AndroidGo network configuration with extended radio hardware

The conventional International GSM cellular network type is renamed to GMS throughout the 
AndroidGo system files. One of the key features of the 
SPRD (kitchen sink - does everything really, more than it should, over networked up every orifice because it can - 
in part an extension of the UNISOC phone) 
functionality is the use of extended frequency tuning and data exchange. 
For example, the low-level cellular network parameters are setup in 
[this configuration file](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/radioPowerFallback-config.xml) (GSM, ECDMA, LTE networks). 
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
<item>311580=U.s.Cellular</item>
<item>312180=Limitless Mobile</item>
<item>312720=Southern Linc</item>
```
Some interesting entries in the configuration file mapping integer codes to operator names include: 
```bash
Verizon, Sprint, SoftBank Moble Corp, *USA*, *Sky*, AISatSea, Smart, Free, 
Southern Linc (where QUINN is noted to be an abbreviation for Queen of the South)
```

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

## File `/system/etc/old-apns-conf.xml`:

A link to the [file is provided here](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/etc/old-apns-conf.xml). 

### Tag fields with common repeated entries (not exhaustive)


```bash
types=dun,
apn=internet,minternet,isp,ppwap,zmms,modem,broadband,ims,mms,mmsc,orangemms,web,hos,multimedia,hms
```

### Unusual patterns     to notice

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
* Imprecise HTTP URLs: `mmsc="http://mmsc"` 
* Transposition of letters in services: `gsm <=> gms` or `wap <=> was`
* There is a GPRS app on my phone. Would some of these carriers pass links along to it?
* 
* Does the code AR correspond to the country, Argentina, or to some facet of the 
  VR/AR (VirtualReality/AugmentedReality) primary research area of Facebook parent company META?

### List of interesting search terms 

The following list provides some keywords that may be useful:
```bash

```
An observation to note is that -- TODO


### Higlighted examples

#### Links to the start of APN definitions for a few countries

#### TODO 

#### TODO 



#### Misc

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
```