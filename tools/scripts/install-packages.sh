#!/bin/bash

if [ ! -f "./packages.conf" ]; then
   exit 0
fi

PACKAGES=`cat ./packages.conf | grep -v '^#' | tr '\n' ' '`
export DEBIAN_FRONTEND=noninteractive 

echo "Installing: $PACKAGES"
if [ "$TARGET" == "" ]; then
   apt-get update 
   apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $PACKAGES
else 
   apt-get update -s
   apt-get install -s -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $PACKAGES
fi
