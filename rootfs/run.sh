#!/bin/bash
DAEMON=apache2
EXEC=$(which "$DAEMON")
ARGS="-f /etc/apache2/apache2.conf -D FOREGROUND"

source /etc/apache2/envvars

apache2 -S

echo "RUN.sh"
echo " "

exec ${EXEC} ${ARGS}
