#!/bin/bash

bash install-podman.sh
bash $TARGET/opt/config-templates/docker/install-docker-compose.sh
chmod +x /usr/local/bin/docker
systemctl daemon-reload

