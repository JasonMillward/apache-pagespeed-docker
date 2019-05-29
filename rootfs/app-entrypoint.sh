#!/bin/bash -e

apache2ctl start
echo "APP ENTRY POINT "
echo " "
exec /tini -- "$@"