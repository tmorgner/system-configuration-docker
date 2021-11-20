#!/bin/bash

if [ "$TARGET" == "" ]; then

  # Install signing keys
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

  # Add source feed
  echo "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list

  apt-get update
  apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" docker-ce
fi

if [ "$TARGET" == "" ]; then
  systemctl enable docker
  systemctl start docker
fi
