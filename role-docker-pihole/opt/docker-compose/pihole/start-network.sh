#!/bin/bash
current_dir="$(dirname $(readlink -f $0))"

source ${current_dir}/.env

ip link add pihole-shim link br0 type macvlan mode bridge
ip addr add ${pihole.bridge-ip}/32 dev pihole-shim
ip link set pihole-shim up
ip route add ${pihole.dhcp-range}/30 dev pihole-shim
