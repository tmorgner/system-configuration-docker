#!/bin/bash

systemctl enable docker-compose@traefik
systemctl start docker-compose@traefik

