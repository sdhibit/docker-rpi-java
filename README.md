rpi-java
============

The rpi-java image combines the rpi-baseimage based on [phusion/baseimage](https://github.com/phusion/baseimage-docker) 
built for the raspberry pi and the Oracle 8 ARM Hard Float JDK. 
For instructions on how to use this image, check out both the [rpi-baseimage documentation](https://github.com/sdhibit/docker-rpi-baseimage).


Building
--------

```bash
$ git clone https://github.com/sdhibit/docker-rpi-java.git
$ cd docker-rpi-java
$ docker build -t rpi-java .
```

Running
-------
This image does not do anything fancy, but if you want to test it out, run the following:

```bash
$ docker run -it sdhibit/rpi-java:latest /bin/bash
```
