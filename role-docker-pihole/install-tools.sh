#!/bin/bash

sed -i "s/127\.0\.0\.1 localhost/127\.0\.0\.1 localhost $(hostname)/" $TARGET/etc/hosts
chmod +x $TARGET/opt/docker-compose/pihole/padd.sh

chmod +x $TARGET/opt/docker-compose/pihole/start-network.sh
chmod +x $TARGET/opt/docker-compose/pihole/stop-network.sh
