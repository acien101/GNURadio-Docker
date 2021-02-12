# GNURadio-Docker

Simple docker for running GNURadio.

## Dependencies

* [x11docker](https://github.com/mviereck/x11docker)

## Running GNURadio from x11docker

```
$ x11docker --hostnet --dbus --pulseaudio -- "-v $(pwd):/src" acien101/gnuradio
```

Where the arguments:
* `--hostnet`: Set docker run option --network=host. Share host's network with the container. Disables network namespacing. Severe reduction of container isolation!
* `--dbus`: Run DBus user session daemon for container command.
* `--pulseaudio`: Sound with pulseaudio. Needs 'pulseaudio' on host and in image.
* `-v $(pwd):/src`: Share your current folder with the container, inside `/src` directory.