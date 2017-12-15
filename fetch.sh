#!/bin/bash

rm -rf ps-files txt-files
mkdir -p ps-files txt-files

for x in {intro,11,12,13,14,21,22,31,41,51,61,71}; do
  pushd ps-files
  wget "https://www.bell-labs.com/usr/dmr/www/man${x}.ps"

  if [ "$x" == "intro" ]; then
    mv "manintro.ps" "man0-intro.ps"
    x="0-intro"
  fi

  popd
  pushd txt-files
  ps2ascii "../ps-files/man${x}.ps" "./man${x}.txt"
  popd
done
