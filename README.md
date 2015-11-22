## Craps Simulator on Ubuntu Dockerfile


This repository contains **Dockerfile** of a [Craps Simulator](http://github.com/dmaddalone/CrapSim) for [Docker](https://www.docker.com/)'s [automated build](https://hub.docker.com/r/dmaddalone/crap-sim-ubuntu) published to the public [Docker Hub Registry](https://hub.docker.com/).


### Base Docker Image

* [dockerfile/ubuntu(http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/dmaddalone/crap-sim-ubuntu) from public [Docker Hub Registry](https://hub.docker.com/): `docker pull dmaddalone/crap-sim-ubuntu`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dmaddalone/crap-sim-ubuntu" github.com/dmaddalone/crap-sim-ubuntu`)


### Usage

    docker run -it --rm dmaddalone/crap-sim-ubuntu