#!/bin/bash
DAEMON=apache2ctl
EXEC=$(which "$DAEMON")
ARGS="-f /etc/apache2/apache2.conf -D FOREGROUND"

source /etc/apache2/envvars
ln -sr /etc/apache2/conf.modules.d/00-systemd.conf /etc/apache2/conf.d/00-systemd.conf

apache2 -S

echo "RUN.sh"
echo " "

mkdir -p /var/run/apache2
exec ${EXEC} ${ARGS}
