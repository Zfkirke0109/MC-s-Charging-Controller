#!/system/bin/sh
# MC's Charging Controller (mcc)
# mcc Service
# versionCode = 201712302
# MCMotherEffin' @ XDA Developers

# Define variables

data_dir=${0%/*}/data

# Update device info ( debugging only )

getprop | grep product | tr -d [ | tr -d ] >$data_dir/device_info.inf

# Set all the switches up

for i in 1 2 3; do

  switch=$(sed -n s/^switch_$i=//p $data_dir/settings.conf | awk '{print $1}')

  if [ $switch != not_found_yet ]; then

    chown 0:0 $switch
    chmod 644 $switch

  else break; fi
done

# Ensure service do not log verbosely,
# wait for proper device initialization,
# then trigger the service

export no_logging=true; sleep 90;
(mcc --service_trigger) &
