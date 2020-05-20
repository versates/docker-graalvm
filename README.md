# Debian based GraalVM Community Edition for Docker
[![](https://images.microbadger.com/badges/image/versates/graalvm.svg)](https://microbadger.com/images/versates/graalvm "Get your own image badge on microbadger.com")


Hands-on Docker image for Java applications running on [GraalVM CE](https://www.graalvm.org) and [Debian](https://www.debian.org).

[Dockerfile](https://github.com/versates/docker-graalvm/blob/master/Dockerfile)


# How to use this image
## Pull and start a Java instance
* `docker pull versates/graalvm`
* `docker run --rm --name java versates/graalvm java -version`

# Supported Docker versions
This image is officially supported on Docker version 19.03 and newer.
Support for older versions is provided on a best-effort basis.
Please see the [Docker installation documentation](https://docs.docker.com/install/) for details on how to upgrade your 
Docker daemon.

# Contributing
You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull 
requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a 
[GitHub issue](https://github.com/versates/docker-graalvm/issues), especially for more ambitious contributions. This 
gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you 
find out if someone else is working on the same thing.