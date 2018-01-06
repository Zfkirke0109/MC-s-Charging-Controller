###### MC's Charging Controller (mcc)
###### mcc README
###### versionCode = 201801062
###### MCMotherEffin' @ XDA Developers


### Into


##### It is meant for to extend Lithium batteries' life by controlling charging


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


##### Notes :-


*    --  It requires your device to be charging while installing / [ --reconf ] for to detect where to hook into kernel

*    --  Running just "mcc" will reset up_threshold and down_threshold to defaults


### Changelog


##### Donut-1

*  -- Faster reference finding for Generic devices
*  ----  added support for HTC 10, and likings
*  ----  thanks to @tbalden and @JohnFawkes
*  ----  for their co-operation

##### Donut

*  -- Minor code improvements

*  -- Refactored coding style

##### Cupcake-2

*  -- Fixed 'permission denied'
