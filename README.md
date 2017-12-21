## MC's Charging Controller (mcc)
## mcc README
## versionCode=2017122003
## MCMotheEffin' @ XDA Developers

### Into

##### It is meant for to extend Lithium batteries' life by controlling charging

### Usage

##### mcc [ STOP % ] [ START % ]
          :- Set thresholds ( % ) used by mcc daemon mode for stopping / starting charging
##### mcc [ --keep ] [ KEEP % ]
          :- Keep battery level at certain KEEP %
##### mcc [ --start ] [ % / time ]
          :- Enable charging for given time / until certain %
          :- Time can be 30 ( 30 seconds ),
                         8m (  8 minutes ),
                         2h (   2 hours  );
##### mcc [ --stop ]
          :- Same as [ --start ], except for charging is disabled
##### mcc [ --daemon ]
          :- Toggle MAGISK daemon mode
##### mcc [ --log ]
          :- Toggle verbose logging
##### mcc [ --info ]
          :- Show some useful information
##### mcc [ --breset ]
          :- Reset battery statistics
##### mcc [ --rconf ]
          :- Re-configure kernel references used by mcc
##### mcc [ --debug ]
          :- Gather debugging data into /sdcard/mcc_debug-Device.zip
##### mcc [ --help ]
          :- Show this help message

### Initial setup

##### It requires your device to be charging during first run for to detect where to hook into kernel
##### For the first run, connect charger, run "mcc" and let it do the job

##### Note :- Please reboot after initial setup to ensure no bad thangs happen to your device ( don't worry, rebooting saves us )
