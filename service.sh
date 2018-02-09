#!/system/bin/sh
# MC's Charging Controller
# mcc Service ( 201802094 )
# MCMotherEffin' @ XDA Developers

# Copyright (c) 2018 Jaymin " MCMotherEffin' " Suthar

# Verbose logger
set -x 2>${0%/*}/cache/service.log

# Make sure all switches are readable
for i in 1 2 3 4; do
  switch=$(sed -n s/^switch_$i=//p ${0%/*}/mcc.conf | awk '{print $1}')
  if [[ $switch == dummy_Path ]]; then break; fi
  chmod u+r $switch
done

# Start the service minding [ --autoshut ]
( (sleep 120; no_logging=true mcc --start-service;) & )
