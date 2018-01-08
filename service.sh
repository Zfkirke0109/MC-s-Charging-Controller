#!/system/bin/sh
# MC's Charging Controller (mcc)
# mcc Service
# versionCode = 201801081
# MCMotherEffin' @ XDA Developers

# Verbose logger
set -x 2>${0%/*}/service.log

# Define variables
data_dir=${0%/*}/data

# Update device info
getprop | grep product | tr -d [ | tr -d ] >$data_dir/device_info.inf

# Set all the switches writable
for i in 1 2 3 4; do
  switch=$(sed -n s/^switch_$i=//p $data_dir/settings.conf | awk '{print $1}')
  if [ $switch != not_found_yet ]; then
    chown 0:0 $switch
    chmod 644 $switch
  else break; fi
done

# Trigger the service minding [ --autoshut ]
export no_logging=true; sleep 90;
(mcc --service_trigger) &
