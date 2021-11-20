#!/bin/bash

bash $TARGET/opt/config-templates/docker/install-docker.sh
bash $TARGET/opt/config-templates/docker/install-docker-compose.sh
systemctl daemon-reload
