###### MC's Charging Controller (mcc)
###### mcc README
###### versionCode = 201712240
###### MCMotherEffin' @ XDA Developers


### Into


##### It is meant for to extend Lithium batteries' life by controlling charging


### Usage

##### mcc [ ARG_1 ] [ ARG_2 ]

##### Arguments can be

      [ STOP % ] [ START % ]
          :- Set thresholds ( % ) used by mcc daemon mode for stopping / starting charging
          :- [ START % ] is optional
          :-   Defaults :- 70 60

      [ --shut ] [ SHUT % ]
          :- Set threshold ( % ) used by mcc daemon mode for powering off the device
          :-   Default  :- 20

      [ --keep ] [ KEEP % ]
          :- Keep battery level at certain [ KEEP % ]

      [ --start ] [ % / time ]
          :- Enable charging for given time / until certain % 
          :- [ % / time ] is optional
          :-   Time can be 30 ( 30 seconds ),
                           8m (  8 minutes ),
                           2h (   2 hours  );

      [ --stop ] [ % / time ]
          :- Same as [ --start ], except for charging is disabled

      [ --daemon ]
          :- Toggle MAGISK daemon mode ON / OFF
          :-   Default  :- ON

      [ --auto_shut ]
          :- Toggle automatic power-off ON / OFF
          :-   Default  :- ON

      [ --log ]
          :- Toggle verbose logging ON / OFF
          :-   Default  :- OFF

      [ --defaults ]
          :- Reset all thresholds to defaults

      [ --info ]
          :- Show some useful information

      [ --breset ]
          :- Reset battery statistics

      [ --rconf ]
          :- Re-configure kernel references used by mcc

      [ --debug ]
          :- Gather debugging data into /cache/mcc_debug-Device.zip

      [ --help ]
          :- Show this help message


### Initial setup


##### It requires your device to be charging during first run / [ --rconf ] for to detect where to hook into kernel

##### For the above, connect charger / usb cable, run "mcc" and let it do the job

##### Notes :- 

*    --  Running just "mcc" will reset up_threshold and down_threshold to defaults

*    --  Automatically powering off only works with daemon mode ON

### Changelog

##### 2017.12.24

*  -- Reboot no longer needed after compatibility check

##### 2017.12.23-2

*  -- Added compatibility check while installing, from now on, only BOOTMODE flashing, to avoid shutting down via auto_shut functionality

##### 2017.12.23-1

*  -- Updated README

*  -- Fixed some minor code

##### 2017.12.23

*  -- Added automatic power-off functionality

*  -- Minor code improvements

##### 2017.12.22-3

*  -- Minor update

##### 2017.12.22-2

*  -- Initial version ( all good )
