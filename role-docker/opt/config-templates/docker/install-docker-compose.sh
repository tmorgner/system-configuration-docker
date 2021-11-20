#!/bin/bash

# Install go version of docker-compose
ARCH=`uname -m`
if [[ "$ARCH" == "armv7"* ]]; then   
  sudo curl -L "https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-linux-armv7" -o $TARGET/usr/local/bin/docker-compose
  chmod a+x $TARGET/usr/local/bin/docker-compose
fi

if [[ "$ARCH" == "x86_64"* ]]; then   
  sudo curl -L "https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-linux-x86_64" -o $TARGET/usr/local/bin/docker-compose
  chmod a+x $TARGET/usr/local/bin/docker-compose
fi

