#!/bin/bash
printf '\033[2J\033[H'
printf 'SESSION 02 | UBUNTU 24.04 WSL2 | DOCKER ENGINE\n\n$ docker --version\n'
docker --version
printf '\n$ docker info | head -35\n'
docker info | head -35
sleep infinity
