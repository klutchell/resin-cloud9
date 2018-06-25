#!/bin/sh

# set timezone with TZ
# eg. TZ=America/Toronto
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# start cloud9 server in the foreground
node server.js -p ${C9_PORT} -w ${C9_WORKSPACE} -l 0.0.0.0 -a ${C9_USER}:${C9_PASS}