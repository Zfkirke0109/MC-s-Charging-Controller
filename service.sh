#!/system/bin/sh
# MC's Charging Controller (mcc)
# mcc Service
# versionCode = 201712272
# MCMotherEffin' @ XDA Developers

# Define variables

data_dir=${0%/*}/data

# Update device info ( debugging only )

getprop | grep product >$data_dir/device_info.inf

# Set the switches up

for i in 1 2 3; do
  switch=$(sed -n s/^switch_$i=//p $data_dir/settings.conf | awk '{print $1}')

  if [ $switch != not_found_yet ]; then

    chown 0:0 $switch
    chmod 644 $switch
  else
    break
  fi
done

# Wait for proper device initialization, then run in MAGISK daemon mode

export no_logging=true; sleep 90;
(mcc --daemon_trigger) &
