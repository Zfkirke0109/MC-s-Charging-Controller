#!/system/bin/sh
# mcc service
# versionCode = 2017122004
# MCMotherEffin' @ XDA Developers

# Define variables & functions

mod_dir=${0%/*}

data_dir=$mod_dir/data
config=$data_dir/settings.conf
dinfo=$data_dir/device_info.inf

get_prop() { sed -n s/^$1=//p $config; }
set_prop() { sed -i s/^$1=.*/$1=$2/g $config; }

switch=$(get_prop switch | awk '{print $1}')

# Update device info (debugging only)

getprop | grep product >/$dinfo

if [ $switch != not_found_yet ]; then

  # Set kernel switch writable

  chown 0:0 $switch
  chmod 644 $switch

fi

# Run in MAGISK daemon mode

export no_logging=true
(cs --daemon_trigger) &
