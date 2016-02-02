Docker-CentOS-ruby
====

Docker Image for ruby development on CentOS Stack.

## Description

This is a base image for building ruby applications on frameworks like rails, sinatra etc. This image is built on top of the [CentOS BuildPack](https://github.com/rightsoln/docker-centos-buildpack-deps).

## Supported tags

`rightsoln/centos-ruby` image supports the below tags. Each link is its `Dockerfile`:

- [`latest`,`2.2.2` (2.2.2/Dockerfile)](https://github.com/rightsoln/dockerfile-centos-buildpack-deps/blob/master/Dockerfile)

Tags correspond to the ruby version.

## Development

If you want to try out something of your own and send a patch, you are most welcome. Here is how you can try this image in your development machine once you have setup docker.

`$ git clone https://github.com/rightsoln/docker-centos-ruby.git
docker build -t centos-ruby .
docker run -it --rm centos-ruby /bin/bash`

`docker tag centos-ruby rightsoln/centos-ruby:latest
docker push rightsoln/centos-ruby:latest`

## Author

[rightsoln](https://github.com/rightsoln)