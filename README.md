###### MC's Charging Controller
###### mcc README ( 201802094 )
###### MCMotherEffin' @ XDA Developers


###### Copyright (c) 2018 Jaymin " MCMotherEffin' " Suthar


### Links

* [Source](https://github.com/Magisk-Modules-Repo/MC-s-Charging-Controller)
* [Support](https://forum.xda-developers.com/apps/magisk/mcs-charging-controller-t3739371)
* [Donate](https://paypal.me/JayminSuthar)
* [Battery University](http://batteryuniversity.com/learn/article/how_to_prolong_lithium_based_batteries)


### Intro

* ##### It is meant to prolong Lithium batteries' life by controlling charging

* ##### It allows you to turn charging ON / OFF by rules you define or manually

* ##### In daemon mode, charging is controlled automatically by these twos: up_ / down_threshold

* ##### Also you can manually set specific ON / OFF time period or desired percent

* ##### Talking more there are battery stats reset and some other useful info

* ##### Everything has error handling, so don't worry while configuring

* ##### Initially inspired by @VR25's 'Magic Charging Switch'


### Usage


##### mcc [ ARG_1 ] [ ARG_2 ].....

##### Arguments can be :

    [ --set ] [ DISABLE % ] [ ENABLE % ]
        :- Set thresholds ( % ) used by daemon mode for turning charging ON / OFF
        :- This will keep battery level within set boundaries while your phone is plugged
        :---  [ ENABLE % ] is optional
        :---  Defaults :- 70 60

    [ --shut ] [ SHUT % ]
        :- Set threshold ( % ) for automatically powering the device OFF
        :---  Default  :- 20

    [ --force ] [ ARGS ACCORDINGLY ].....
        :- Same as [ --set ] [ DISABLE % ] [ ENABLE % ]
        :---  or   [ --shut ] [ SHUT % ]
        :---  Except for no limitations are applied

    [ --enable ] [ % / time ]
        :- Enable charging for given time / until certain % 
        :---  [ % / time ] is optional
        :---  Time can be 30 ( 30 seconds ), 8m ( 8 minutes ) or 2h ( 2 hours )
        :---  Level can be 60%, 55% or 19%

    [ --disable ] [ % / time ]
        :- Same as above, except for charging is disabled

    [ --daemon ]
        :- Toggle Magisk daemon mode ON / OFF
        :---  Default  :- ON

    [ --autoshut ]
        :- Toggle automatic power-off ON / OFF
        :---  Default  :- ON

    [ --ckservice ]
        :- Check whether mcc Service is running
        :---  If not, fork a new process for it

    [ --default ]
        :- Reset all thresholds to defaults

    [ --info ]
        :- Show some useful information about current status

    [ --statreset ]
        :- Reset battery statistics

    [ --reconf ]
        :- Re-configure sysfs references (plug in charger first!)

    [ --help ]
        :- Show this help message


### Notes

* Device must be charging while installing / [ --reconf ]
* You should press enter after forking service
* 85 70 for daemon and 20 for shut is optimal balance between battery lifespan and available capacity
* [ --statreset ] might not work on some ROMs
* It re-installs busybox to /cache/mcc_busybox ( about 1MB )
* Every task is executed once per 10 seconds
* If you like my work, please consider making a donation


### Changelog

##### Jalebis

* Moved mcc-check command to mcc as [ --ckservice ]

##### Imerty MR

* Fixed mcc-check running exec instead of fork

* Fixed service logging with mcc-check

##### Imerty

* Added a new command 'mcc-check'
*  --------    Use it if you feel mcc Service has been killed

* README is improved and partly rewritten
*  --------    thanks to [0xCA](https://t.me/Hi10pH264)

##### Handwo

* Fixed a bug with never resuming charging with some typical kernels
* Daemon is more stable, now checking battery current
* Battery stats are now reset on power-off
* [ --reset ] is now [ --set ]
*  --------    thanks to [0xCA](https://t.me/Hi10pH264) for his extensive testing, reporting and reasoning

* Fixed rebooting while checking compatibility

* Added /sys/module into references lookup path

* Improved charging control

* Better environment setup

* Other code improvements
