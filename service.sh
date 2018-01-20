#!/system/bin/sh
# MC's Charging Controller
# mcc Service ( 201801201 )
# MCMotherEffin' @ XDA Developers

# Verbose logger
set -x 2>${0%/*}/service.log

# Define variables
data_dir=${0%/*}/data

# Make sure all switches are writable
for i in 1 2 3 4; do
  switch=$(sed -n s/^switch_$i=//p $data_dir/settings.conf | awk '{print $1}')
  case $switch in
    dummy_Path)
      break
    ;;
    *         )
      chown 0:0 $switch
      chmod 644 $switch
    ;;
  esac
done

# Start the service minding [ --autoshut ]
(sleep 90; no_logging=true mcc --start-service;) &
