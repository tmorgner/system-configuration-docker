# Pihole Docker-Compose setup

This compose file sets up pihole with a static ip address in 
the local network using docker's macvlan. This in return allows
pihole to be a DHCP server if needed and makes the container
appear as normal host on your local network. 

To make pihole accessible from the container host we also setup 
a bridge network to route local packages for pihole to the docker-container. 

This network setup is based on an guide by Lars Kellog-Stedman
( https://blog.oddbit.com/post/2018-03-12-using-docker-macvlan-networks/ )

