# NGINX Examples - Reverse Proxy

Example NGINX Reverse Proxy.

## Running This Project

`docker build -t nginx-example-1 .`

`docker run --name nginx-demo -d -p 8080:80 nginx-example-1`

open `http://localhost:8080/`

Try opening `http://localhost:8080/apps/foo` or `http://localhost:8080/apps/bar`

To kill, rebuild, and relaunch:

`docker kill nginx-demo && docker rm nginx-demo && docker build -t nginx-example-1 . && docker run --name nginx-demo -d -p 8080:80 nginx-example-1`

### Debugging

To view the NGINX logs:

`docker logs nginx-demo`

For more verbose logs, start docker while overriding the default entrypoint:

`docker run --name nginx-demo -d -p 8080:80 nginx-example-1 -d nginx nginx-debug -g 'daemon off;'`

## Examples

_The following examples should have git tags associated with them_

* Example 1 - Hosting multiple applications at a root directory. Tag: `e1-multi-directory`
* Example 2 - Simple proxy setup. Tag: `e2-simple-proxy`
