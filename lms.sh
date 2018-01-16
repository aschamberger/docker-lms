#!/bin/sh

# set proper rights
chown -R nobody:users /config

# Set proper UID/GID/UMASK as on host system
# unRAID host uses 99:100 for nobody:users, and a umask of 0000
usermod -u $USER_ID nobody
usermod -g $GROUP_ID nobody
umask $UMASK

# run Logitech Media Server
exec /sbin/setuser nobody /usr/sbin/squeezeboxserver --prefsdir /config/prefs --logdir /config/logs --cachedir /config/cache