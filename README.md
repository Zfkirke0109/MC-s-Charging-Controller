###### MC's Charging Controller
###### mcc README
###### versionCode = 201801111
###### MCMotherEffin' @ XDA Developers

### Into

##### It is meant for to extend Lithium batteries' life by controlling charging

##### It allows you to turn charging ON / OFF as per your mood, taking as time, level or on demand

##### It also allows you to perform a battery stats reset

##### It is inspired from @VR25's 'Magic Charging Switch'

### Usage

##### mcc [ ARG_1 ] [ ARG_2 ].....

##### Arguments can be
*
*  --       [ --reset ] [ DISABLE % ] [ ENABLE % ]
*
*  --           :- Set thresholds ( % ) used by daemon mode for turning charging ON / OFF
*  --           :- [ ENABLE % ] is optional
*  --           :-   Defaults :- 70 60
*
*  --       [ --shut ] [ SHUT % ]
*
*  --           :- Set threshold ( % ) for automatically powering the device OFF
*  --           :-   Default  :- 20
*
*  --       [ --force ] [ ARGS ACCORDINGLY ].....
*
*  --           :- Same as [ --reset ] [ DISABLE % ] [ ENABLE % ]
*  --           :-      or [ --shut ] [ SHUT % ],
*  --           :-      Except for no limitations are applied
*
*  --       [ --enable ] [ % / time ]
*
*  --           :- Enable charging for given time / until certain % 
*  --           :- [ % / time ] is optional
*  --           :-   Time can be 30 ( 30 seconds ), 8m ( 8 minutes ) or 2h ( 2 hours )
*  --           :-   Level can be 60%, 55% or 19%
*
*  --       [ --disable ] [ % / time ]
*
*  --           :- Same as above, except for charging is disabled
*
*  --       [ --daemon ]
*
*  --           :- Toggle Magisk daemon mode ON / OFF
*  --           :-   Default  :- ON
*
*  --       [ --autoshut ]
*
*  --           :- Toggle automatic power-off ON / OFF
*  --           :-   Default  :- ON
*
*  --       [ --default ]
*
*  --           :- Reset all thresholds to defaults
*
*  --       [ --info ]
*
*  --           :- Show some useful information
*
*  --       [ --statreset ]
*
*  --           :- Reset battery statistics
*
*  --       [ --reconf ]
*
*  --           :- Re-configure sysfs references
*
*  --       [ --help ]
*
*  --           :- Show this help message

### Notes

*  --  Device must be charging while installing / [ --reconf ]
*
*  --  I'm an Indian, so please forgive me some bad English,
*  --------  Also I'm not an artist, so please forgive me some bad UI ( shell ),
*  --------  Addressing both the above, I welcome you to suggest me what the UI should be alike
*  --------  And what the strings really should be

### Changelog

##### Froyo

*  --  [ DISABLE % ] [ ENABLE % ] is now
*  --------  [ --reset ] [ DISABLE % ] [ ENABLE % ]
*
*  --  Removed [ --keep ] [ KEEP % ]
*  --------  To get that back, force some close thresholds like 90 89, 50 48 or likings
*
*  --  Removed [ --verbose ], [ --debug ]
*  --------  If you find somthing bad, please PM me at XDA Developers and I would like to help you
*
*  --  Minor code improvements
