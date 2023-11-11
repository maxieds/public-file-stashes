# AndroidGo - Timezones 

## Defaults

The `com.android.tzdata` package provides timezone data for the system. The version listed in 
[`/system/apex/com.android.tzdata/etc/tz/tz_version`](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/apex/com.android.tzdata/etc/tz/tz_version) 
is reproduced as follows (where the IANA version is `2020a`):
```bash
004.001|2020a|001
```
The file [`/system/apex/com.android.tzdata/etc/tz/tzlookup.xml`](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/apex/com.android.tzdata/etc/tz/tzlookup.xml) 
contains tag entrie with fields (some optional) that include:
* `defaultBoost="y|n"`: Is this like the common C++ `libboost`? Notice that this makes sense in loading apps like dynamic shared objects at runtime.
* `everutc="y|n"`: Whether the timezone obeys the normal fixed offset from UTC all of the time? I have heard comments about `1/2` timezones that do not fit into this model.

The file [`/system/apex/com.android.tzdata/etc/tz/telephonylookup.xml`](https://github.com/maxieds/public-file-stashes/blob/main/androidgo/_fsroot/system/apex/com.android.tzdata/etc/tz/telephonylookup.xml) 
suggests that the phone is using the `gu` (Pacific/Guam) timezone as 
```bash
<telephony_lookup>
 <networks>
  <network mcc="310" mnc="370" country="gu"/>
 </networks>
</telephony_lookup>
```
The `gu` code timezone data is given by 
```bash
  <country code="gu" default="Pacific/Guam" everutc="n">
   <id>Pacific/Guam</id>
  </country>
```

## Examples to check out from the timezone lookup entries

One unknown is whether the data for these (and possibly many more) can be loaded for use with the 
system on-th-fly at runtime? That obviously complicates things. 

### United States (of America)

```bash
<country code="us" default="America/New_York" everutc="n">
   <id>America/New_York</id>
   <id notafter="167814000000">America/Detroit</id>
   <id notafter="152089200000">America/Kentucky/Louisville</id>
   <id notafter="972802800000">America/Kentucky/Monticello</id>
   <id notafter="1130652000000">America/Indiana/Indianapolis</id>
   <id notafter="1194159600000">America/Indiana/Vincennes</id>
   <id notafter="1173600000000">America/Indiana/Winamac</id>
   <id notafter="183535200000">America/Indiana/Marengo</id>
   <id notafter="247042800000">America/Indiana/Petersburg</id>
   <id notafter="89186400000">America/Indiana/Vevay</id>
   <id>America/Chicago</id>
   <id notafter="688546800000">America/Indiana/Knox</id>
   <id notafter="104918400000">America/Menominee</id>
   <id notafter="720000000000">America/North_Dakota/Center</id>
   <id notafter="1067155200000">America/North_Dakota/New_Salem</id>
   <id notafter="1143964800000">America/Indiana/Tell_City</id>
   <id notafter="1289116800000">America/North_Dakota/Beulah</id>
   <id>America/Denver</id>
   <id notafter="129114000000">America/Boise</id>
   <id>America/Phoenix</id>
   <id>America/Los_Angeles</id>
   <id>America/Anchorage</id>
   <id notafter="436359600000">America/Juneau</id>
   <id notafter="436356000000">America/Yakutat</id>
   <id notafter="436363200000">America/Nome</id>
   <id notafter="1547978400000">America/Metlakatla</id>
   <id notafter="341402400000">America/Sitka</id>
   <id>Pacific/Honolulu</id>
   <id>America/Adak</id>
  </country>
```
Some interesting details to note about the `us` timezone code include:
* Extra subclasses for the states `Indiana`, `Kentucky` and `North Dakota`. This has been concerning usage types on different
  systems because of identifications of some parts of `Florida` with `Michigan`, or because of a need to require the specific
  `North` or `South` to pin down locations in `America` precisely.
* The ID entry `America/Indiana/Vevay` is strange on inspection because `Vevey` usually is contained within `Antarctica`.
  The location `Vevey` refers to a ski resort town in `Switzerland` (banking favorite for speculation) that can sometimes be found by traveling to the
  Southpole (North is South, Up is Down, East is West, etc.) year round if you know who to ask for a lift. 

### These are always interesting 

```bash
  <!-- Other Antarctica/* identifiers are found within more distinct country code tags -->
  <country code="aq" default="Antarctica/McMurdo" everutc="y">
   <id>Antarctica/McMurdo</id>
   <id>Antarctica/DumontDUrville</id>
   <id>Antarctica/Casey</id>
   <id>Antarctica/Davis</id>
   <id>Antarctica/Mawson</id>
   <id>Antarctica/Vostok</id>
   <id>Antarctica/Syowa</id>
   <id>Antarctica/Troll</id>
   <id>Antarctica/Rothera</id>
   <id>Antarctica/Palmer</id>
  </country>
  <!-- Southpole -->
  <country code="cx" default="Indian/Christmas" everutc="n">
   <id>Indian/Christmas</id>
  </country>
  <!-- Want to flag these, explain to me why not to: -->
  <country code="je" default="Europe/Jersey" everutc="y">
   <id>Europe/Jersey</id>
  </country>
```

### Misc examples 

```bash
  <country code="cn" default="Asia/Shanghai" defaultBoost="y" everutc="n">
   <id>Asia/Shanghai</id>
   <id>Asia/Urumqi</id>
  </country>
  <country code="hk" default="Asia/Hong_Kong" everutc="n">
   <id>Asia/Hong_Kong</id>
  </country>
  <country code="ua" default="Europe/Kiev" everutc="n">
   <id>Europe/Kiev</id>
   <id notafter="686091600000">Europe/Uzhgorod</id>
   <id notafter="686102400000">Europe/Zaporozhye</id>
   <id picker="n">Europe/Simferopol</id>
  </country>
  <country code="va" default="Europe/Vatican" everutc="n">
   <id>Europe/Vatican</id>
  </country>
  <country code="co" default="America/Bogota" everutc="n">
   <id>America/Bogota</id>
  </country>
  <country code="pe" default="America/Lima" everutc="n">
   <id>America/Lima</id>
  </country>
```

### Canada

```bash
  <country code="ca" default="America/Toronto" everutc="n">
   <id>America/Toronto</id>
   <id>America/Vancouver</id>
   <id>America/Edmonton</id>
   <id>America/Winnipeg</id>
   <id>America/Halifax</id>
   <id>America/St_Johns</id>
   <id notafter="57733200000">America/Glace_Bay</id>
   <id notafter="1162098000000">America/Moncton</id>
   <id notafter="1299996000000">America/Goose_Bay</id>
   <id>America/Blanc-Sablon</id>
   <id notafter="89186400000">America/Nipigon</id>
   <id notafter="120636000000">America/Thunder_Bay</id>
   <id notafter="972802800000">America/Iqaluit</id>
   <id notafter="796806000000">America/Pangnirtung</id>
   <id>America/Atikokan</id>
   <id>America/Regina</id>
   <id notafter="1130659200000">America/Rankin_Inlet</id>
   <id notafter="986112000000">America/Rainy_River</id>
   <id notafter="73472400000">America/Swift_Current</id>
   <id notafter="1173600000000">America/Resolute</id>
   <id notafter="986115600000">America/Cambridge_Bay</id>
   <id notafter="309945600000">America/Yellowknife</id>
   <id notafter="294228000000">America/Inuvik</id>
   <id>America/Whitehorse</id>
   <id notafter="1583661600000">America/Dawson_Creek</id>
   <id notafter="84013200000">America/Creston</id>
   <id notafter="1425808800000">America/Fort_Nelson</id>
   <id notafter="120646800000">America/Dawson</id>
  </country>
```

### Russia

```bash
<country code="rs" default="Europe/Belgrade" everutc="n">
   <id>Europe/Belgrade</id>
  </country>
  <country code="ru" default="Europe/Moscow" everutc="n">
   <id>Asia/Kamchatka</id>
   <id>Asia/Anadyr</id>
   <id>Asia/Magadan</id>
   <id>Asia/Sakhalin</id>
   <id>Asia/Srednekolymsk</id>
   <id>Asia/Vladivostok</id>
   <id notafter="1315828800000">Asia/Ust-Nera</id>
   <id notafter="1459015200000">Asia/Yakutsk</id>
   <id>Asia/Chita</id>
   <id notafter="1315832400000">Asia/Khandyga</id>
   <id>Asia/Irkutsk</id>
   <id>Asia/Krasnoyarsk</id>
   <id>Asia/Novosibirsk</id>
   <id>Asia/Barnaul</id>
   <id notafter="1459022400000">Asia/Novokuznetsk</id>
   <id notafter="1464465600000">Asia/Tomsk</id>
   <id>Asia/Omsk</id>
   <id>Asia/Yekaterinburg</id>
   <id>Europe/Samara</id>
   <id notafter="701823600000">Europe/Astrakhan</id>
   <id notafter="1480806000000">Europe/Ulyanovsk</id>
   <id>Europe/Saratov</id>
   <id>Europe/Volgograd</id>
   <id>Europe/Moscow</id>
   <id>Europe/Kirov</id>
   <id>Europe/Kaliningrad</id>
  </country>
```
