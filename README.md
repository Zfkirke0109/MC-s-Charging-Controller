###### MC's Charging Controller (mcc)
###### mcc README
###### versionCode = 201801081
###### MCMotherEffin' @ XDA Developers

### Into

##### It is meant for to extend Lithium batteries' life by controlling charging

##### It is inspired from @VR25's 'Magic Charging Switch'

### Usage

##### mcc [ ARG_1 ] [ ARG_2 ] .....

##### Arguments can be

-         [ DISABLE % ] [ ENABLE % ]

-             :- Set thresholds ( % ) used by daemon mode for turning charging ON / OFF
-             :- [ ENABLE % ] is optional
-             :-   Defaults :- 70 60

-         [ --shut ] [ SHUT % ]

-             :- Set threshold ( % ) for automatically powering the device off
-             :-   Default  :- 20

-         [ --force ] [ ARGS ACCORDINGLY ].....

-             :- Same as [ DISABLE % ] [ ENABLE % ] or [ --shut ] [ SHUT % ],
-             :-     except for no limitations are applied

-         [ --keep ] [ KEEP % ]

-             :- Keep battery level at certain [ KEEP % ]

-         [ --enable ] [ % / time ]

-             :- Enable charging for given time / until certain % 
-             :- [ % / time ] is optional
-             :-   Time can be 30 ( 30 seconds ),
-                              8m (  8 minutes ),
-                              2h (   2 hours  );

-         [ --disable ] [ % / time ]

-             :- Same as above, except for charging is disabled

-         [ --daemon ]

-             :- Toggle MAGISK daemon mode ON / OFF
-             :-   Default  :- ON

-         [ --autoshut ]

-             :- Toggle automatic power-off ON / OFF
-             :-   Default  :- ON

-         [ --verbose ]

-             :- Toggle verbose logs ON / OFF
-             :-   Default  :- OFF

-         [ --default ]

-             :- Reset all thresholds to defaults

-         [ --info ]

-             :- Show some useful information

-         [ --statreset ]

-             :- Reset battery statistics

-         [ --reconf ]

-             :- Re-configure kernel references

-         [ --debug ]

-             :- Gather debugging data

-         [ --help ]

-             :- Show this help message

### Notes

*    --  It requires your device to be charging while installing / [ --reconf ] for to detect where to hook into kernel

*    --  Service will be triggered some later booting the device, so, you get a chance to toggle automatic power-off OFF

*    --  Running just 'mcc' will reset up_threshold and down_threshold to defaults

### Request

*    --  I'm an Indian, so please forgive me some bad English,
*    ----  also I'm not an artist, so please forgive me some bad UI ( shell ),
*    ----  addressing both the above, I welcome you to suggest me what the UI should be alike
*    ----  and what the strings really should be

### Changelog

##### Eclair

*  -- A new format for the UI

##### Donut-3

*  -- Reverted 'Please connect the charger' while installing
*  ----  just for if your kernel is not fully functional

*  -- To HTC 10 owners,
*  ----  your device provides only half of the functionality needed by mcc to work,
*  ----  so, it might or might not work,
*  ----  thanks to @JohnFawkes for his co-operation with debugging

##### Donut-2

*  -- I'm sorry guys,
*  ----  previous echo error fix was not working for some devices,
*  ----  and also previous version caused power-offs for clean flashes,
*  ----  this version will fix both these
