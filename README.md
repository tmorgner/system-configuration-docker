# Example setup for docker/podman with template systemd-services

This repository contains a bunch of scripts to fetch the latest
podman or docker and the latest docker-compose v2 to easily run
containers based on docker-compose files. The scripts here assume
an Ubuntu system.

Each module contains a bunch of configuration files that need
to be installed on the host. (Either copy the files manually as 
root or use the `activate.sh` script to do it automagically.)

Each module may contain a `install-tools.sh` file that then
performs additional steps. 

The files here set up docker (using the official install 
instructions made into a script) or podman (using prebuild 
binaries based on an install guide by
[Atlantic.net](https://www.atlantic.net/dedicated-server-hosting/how-to-install-and-use-podman-on-ubuntu-20-04/)
).

Docker-Compose is downloaded from the project's Github
release pages.

To make podman act as a true docker-daemon, the contents 
of Ubuntu's 21.04 podman-docker package are installed as
well. This is just a shell-script translating calls to
docker into calls to podman along with an systemd configuration
to activate podman's docker-compatible socket server.
