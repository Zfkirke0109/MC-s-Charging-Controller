###### MC's Charging Controller
###### mcc README ( 201802091 )
###### MCMotherEffin' @ XDA Developers


###### Copyright (c) 2018 Jaymin " MCMotherEffin' " Suthar


### Links


* [Source](https://github.com/Magisk-Modules-Repo/MC-s-Charging-Controller)

* [Support](https://forum.xda-developers.com/apps/magisk/mcs-charging-controller-t3739371)

* [Donate](https://paypal.me/JayminSuthar)


### Intro


* ##### It is meant for to extend Lithium batteries' life by controlling charging

* ##### It allows you to turn charging ON / OFF as per your mood, taking as time, level or on demand

* ##### Talking more is battery stats reset, and some other useful info

* ##### Everything has error handling, so don't worry

* ##### Most basic tasks are automated

* ##### Initially inspired from @VR25's 'Magic Charging Switch'


### Usage


##### mcc [ ARG_1 ] [ ARG_2 ].....

##### Arguments can be

*  [ --set ] [ DISABLE % ] [ ENABLE % ]

        :- Set thresholds ( % ) used by daemon mode for turning charging ON / OFF
        :-       [ ENABLE % ] is optional
        :-       Defaults :- 70 60

*  [ --shut ] [ SHUT % ]

        :- Set threshold ( % ) for automatically powering the device OFF
        :-       Default  :- 20

*  [ --force ] [ ARGS ACCORDINGLY ].....

        :- Same as [ --set ] [ DISABLE % ] [ ENABLE % ]
        :-       or [ --shut ] [ SHUT % ],
        :-       Except for no limitations are applied

*  [ --enable ] [ % / time ]

        :- Enable charging for given time / until certain % 
        :-       [ % / time ] is optional
        :-       Time can be 30 ( 30 seconds ), 8m ( 8 minutes ) or 2h ( 2 hours )
        :-       Level can be 60%, 55% or 19%

*  [ --disable ] [ % / time ]

        :- Same as above, except for charging is disabled

*  [ --daemon ]

        :- Toggle Magisk daemon mode ON / OFF
        :-       Default  :- ON

*  [ --autoshut ]

        :- Toggle automatic power-off ON / OFF
        :-       Default  :- ON

*  [ --default ]

        :- Reset all thresholds to defaults

*  [ --info ]

        :- Show some useful information

*  [ --statreset ]

        :- Reset battery statistics

*  [ --reconf ]

        :- Re-configure sysfs references

*  [ --help ]

        :- Show this help message


### Notes


*  --  Device must be charging while installing / [ --reconf ]

*  --  [ --statreset ] might not work on some ROMs

*  --  It re-installs busybox to /cache/mcc_busybox ( about 1MB )

*  --  Every single task is accurated by 10 seconds

*  --  If you like my work, please consider donating to me


### Changelog


##### Handwo

*  --  Fixed a bug with never resuming charging with some typical kernels
*  --  Daemon is more stable, now testing current
*  --  Battery stats are now reset on power-off
*  --  README is a bit improved
*  --  [ --reset ] is now [ --set ]
*  --------    thanks to @CCL108XIV for his extensive testing, reporting and reasoning

*  --  Fixed rebooting while checking compatibility

*  --  Added /sys/module into references lookup path

*  --  Improved charging control

*  --  Better environment setup

*  --  Some minor changes

##### Gulab Jamoon

*  --  Fixed 'BusyBox not found'

##### Flesh o' Banana

*  --  Some minor changes
