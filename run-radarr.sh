#!/usr/bin/env bash

# Check our uid/gid, change if env variables require it
if [ "$( id -u radarr )" -ne "${LUID}" ]; then
    usermod -o -u ${LUID} radarr
fi

if [ "$( id -g radarr )" -ne "${LGID}" ]; then
    groupmod -o -g ${LGID} radarr
fi

# Set permissions
chown -R radarr:radarr /config/ /opt/Radarr

export XDG_CONFIG_HOME="/config/radarr"

exec runuser -l radarr -c '/usr/bin/mono /opt/Radarr/Radarr.exe -nobrowser -data=/config'
