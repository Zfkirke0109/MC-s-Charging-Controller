###### MC's Charging Controller
###### mcc README ( 201801132 )
###### MCMotherEffin' @ XDA Developers

### Intro

##### It is meant for to extend Lithium batteries' life by controlling charging

##### It allows you to turn charging ON / OFF as per your mood, taking as time, level or on demand

##### Talking more is battery stats reset, and some other useful info

##### Everything is interactive via shell CLI, run "mcc" from Terminal

##### Some basic tasks are automated

##### It is inspired from @VR25's 'Magic Charging Switch'

### Usage

##### mcc [ ARG_1 ] [ ARG_2 ].....

##### Arguments can be

*           [ --reset ] [ DISABLE % ] [ ENABLE % ]

                :- Set thresholds ( % ) used by daemon mode for turning charging ON / OFF
                :-       [ ENABLE % ] is optional
                :-       Defaults :- 70 60

*           [ --shut ] [ SHUT % ]

                :- Set threshold ( % ) for automatically powering the device OFF
                :-       Default  :- 20

*           [ --force ] [ ARGS ACCORDINGLY ].....

                :- Same as [ --reset ] [ DISABLE % ] [ ENABLE % ]
                :-       or [ --shut ] [ SHUT % ],
                :-       Except for no limitations are applied

*           [ --enable ] [ % / time ]

                :- Enable charging for given time / until certain % 
                :-       [ % / time ] is optional
                :-       Time can be 30 ( 30 seconds ), 8m ( 8 minutes ) or 2h ( 2 hours )
                :-       Level can be 60%, 55% or 19%

*           [ --disable ] [ % / time ]

                :- Same as above, except for charging is disabled

*           [ --daemon ]

                :- Toggle Magisk daemon mode ON / OFF
                :-       Default  :- ON

*           [ --autoshut ]

                :- Toggle automatic power-off ON / OFF
                :-       Default  :- ON

*           [ --default ]

                :- Reset all thresholds to defaults

*           [ --info ]

                :- Show some useful information

*           [ --statreset ]

                :- Reset battery statistics

*           [ --reconf ]

                :- Re-configure sysfs references

*           [ --help ]

                :- Show this help message

### Notes

*  --  Device must be charging while installing / [ --reconf ]

*  --  I'm an Indian, so please forgive me some bad English,
*  --------  Also I'm not an artist, so please forgive me some bad UI ( shell CLI ),
*  --------  Addressing both the above, I welcome you to suggest me what the UI should be alike
*  --------  And what the strings really should be

### Changelog

##### Gingerbread-1

*  --  Added battery level check in [ --shut ]

##### Gingerbread

*  --  Fixed the error with en/dis abling charging for some %

*  --  Code put all in sync

*  --  Updated README.md

##### Froyo-1

*  --  Fixed the error with [ --help ]
