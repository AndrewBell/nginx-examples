# Static File Server

An example of using NGINX to serve local static content

## Running This Project

`docker build -t nginx-server .`

`docker run --name nginx-server-demo -d -p 8080:80 nginx-server`

_or_

Run: `sh deploy-local.sh`

open `http://localhost:8080/`

## Cleaning Up This Project

Run `sh destroy-local.sh`

## Debugging

Attach to a running Docker container:

`docker exec -it nginx-server-demo /bin/bash`

Navigate to Logs:

`cd /var/log/nginx`
