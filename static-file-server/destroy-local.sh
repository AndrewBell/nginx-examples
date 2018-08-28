#!/bin/bash
#
# Stops (and removes!) the local docker container
#
# `sh ./deploy`
#

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
}

if ! docker kill nginx-server-demo ; then
  err "Local docker kill failed."
fi

if ! docker rm nginx-server-demo ; then
  err "Local docker rm failed."
fi

echo "All done 'ere mate"
