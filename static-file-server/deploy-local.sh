#!/bin/bash
#
# Deploys a local docker container
#
# `sh ./deploy`
#

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
}

if ! sh destroy-local.sh ; then
  err "Docker cleanup failed, but this is okay if you don't currently have an image to clean up."
fi

if ! docker build -t nginx-server . ; then
  err "Local docker build failed."
  exit 1
fi

if ! docker run --name nginx-server-demo -d -p 8080:80 nginx-server ; then
  err "Local docker run failed."
  exit 1
fi

echo "All done 'ere mate"
