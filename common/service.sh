#!/system/bin/sh
# mcc service
# versionCode = 201712251
# MCMotherEffin' @ XDA Developers

# Define variables & functions

mod_dir=${0%/*}

data_dir=$mod_dir/data
config=$data_dir/settings.conf
dinfo=$data_dir/device_info.inf

get_prop() { sed -n s/^$1=//p $config; }

# Update device info ( debugging only )

getprop | grep product >/$dinfo

# Set-up the switch

switch=$(get_prop switch | awk '{print $1}')

if [ $switch != not_found_yet ]; then

  chown 0:0 $switch
  chmod 644 $switch
fi

# Wait for proper device initialization, then run in MAGISK daemon mode

export no_logging=true
(sleep 90 && mcc --daemon_trigger) &
