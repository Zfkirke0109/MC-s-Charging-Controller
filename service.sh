#!/system/bin/sh
# MC's Charging Controller
# mcc Service ( 201801251 )
# MCMotherEffin' @ XDA Developers

# Verbose logger
set -x 2>${0%/*}/cache/service.log

# Make sure all switches are writable
for i in 1 2 3 4; do
  switch=$(sed -n s/^switch_$i=//p ${0%/*}/mcc.conf | awk '{print $1}')
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
(sleep 120; no_logging=true mcc --start-service;) &
