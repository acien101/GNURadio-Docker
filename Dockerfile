FROM ubuntu:18.04

RUN apt-get update

# Set tztime
ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:gnuradio/gnuradio-releases
RUN apt-get update
RUN apt-get install -y gnuradio
RUN apt-get install -y python3-gi gobject-introspection gir1.2-gtk-3.0

# Necessary to share audio with x11docker
RUN apt-get install -y pulseaudio

ENTRYPOINT ["/usr/bin/gnuradio-companion"]