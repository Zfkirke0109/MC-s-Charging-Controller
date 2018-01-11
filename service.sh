#!/system/bin/sh
# MC's Charging Controller
# mcc Service
# versionCode = 201801112
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
  case $switch in
    not_found_yet)
      break
    ;;
    *            )
      chown 0:0 $switch
      chmod 644 $switch
    ;;
  esac
done

# Trigger the service minding [ --autoshut ]
export no_logging=true; sleep 90;
(mcc --service_trigger) &
