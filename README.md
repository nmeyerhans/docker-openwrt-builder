Build OpenWRT images in Docker
===

OpenWRT has a relatively long list of build dependencies. I want a convenient way to install them all, as well as assurance that they're not cluttering the filesystem on my primary machine. Docker is helpful here.

The docker image generated by this file can be though of as a runtime wrapper around the OpenWRT build process. I use commands similar to the following:

```
$ cd ~/src/openwrt
$ docker run --user $UID -v $PWD:/src -it openwrt-build ./scripts/feeds update -a
$ docker run --user $UID -v $PWD:/src -it openwrt-build ./scripts/feeds install -a
$ docker run --user $UID -v $PWD:/src -it openwrt-build make menuconfig
$ docker run --user $UID -v $PWD:/src -it openwrt-build make
```

I provide a bit more background and detail [on my blog](https://noah.meyerhans.us/blog/2015/03/19/building-openwrt-with-docker/), although things have changed a bit since then. The commands above differ slightly from what's on the blog, and you should consider this README as definitive.
