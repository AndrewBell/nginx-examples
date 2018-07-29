# NGINX Examples

Some examples of using NGINX, based in Docker containers.

## Requirements

[Docker](https://docs.docker.com/installation/)(Optional, if you would like to run the example in Docker)

### Optional

[git](https://git-scm.com/downloads) - Alternatively, download a zip of this GitHub repo.

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

TODO: Attach to docker container and reload based on changes made to mounted config files.

## Resources

[NGINX Docker](https://hub.docker.com/_/nginx/)

[NGINX Beginners Guide](https://nginx.org/en/docs/beginners_guide.html)

## Contributing

If you would like to make an update to this project, fork and open a pull request. If you have any questions, please feel free to reach out (contact info below)

## Contact Me

### Andrew "Doc" Bell ###

homepage: www.recursivechaos.com

email: andrew@recursivechaos.com

twitter: @recursive_chaos
