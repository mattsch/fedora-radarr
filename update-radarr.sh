#!/usr/bin/env bash

# From https://github.com/tuxeh/docker-radarr

echo "updating radarr"
rm -Rfv /opt/Radrr/*
mv $2/Radrr/* /opt/Radrr/

echo "sending term to radarr, configure docker to automatically restart this container"
kill $1
