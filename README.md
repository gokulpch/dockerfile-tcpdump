[![](https://badge.imagelayers.io/uzyexe/tcpdump:latest.svg)](https://imagelayers.io/?images=uzyexe/tcpdump:latest 'Get your own badge on imagelayers.io')

# uzyexe/tcpdump [![Circle CI](https://circleci.com/gh/uzyexe/dockerfile-tcpdump.svg?style=svg)](https://circleci.com/gh/uzyexe/dockerfile-tcpdump)

This is tcpdump container.

## What is tcpdump

tcpdump is a common packet analyzer that runs under the command line.

[http://www.tcpdump.org/](http://www.tcpdump.org/)

## Dockerfile

[**Trusted Build**](https://hub.docker.com/r/uzyexe/tcpdump/)

This Docker image is based on the [alpine:3.4](https://hub.docker.com/_/alpine) base image.

## How to use this image

This simple image runs a tcpdump and writes dumps to the volume /data.
It will keep at max 10x 1GB files and overwrite the oldest one.

To capture on the hosts network interfaces, you need to run the
container by using the host networking mode:

```
$ docker run --net=host uzyexe/tcpdump
```

To specify filters or interface, you can use this image as you would
use tcpdump:

```
$ docker run --net=host uzyexe/tcpdump -i eth2 port 80
```
