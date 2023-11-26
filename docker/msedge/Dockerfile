# Run Chrome in a container
#
# docker run -it \
#	--net host \ # may as well YOLO
#	--cpuset-cpus 0 \ # control the cpu
#	--memory 512mb \ # max memory it can use
#	-v /tmp/.X11-unix:/tmp/.X11-unix \ # mount the X11 socket
#	-e DISPLAY=unix$DISPLAY \
#	-v $HOME/Downloads:/home/chrome/Downloads \
#	-v $HOME/.config/google-chrome/:/data \ # if you want to save state
#	--security-opt seccomp=$HOME/chrome.json \
#	--device /dev/snd \ # so we have sound
#   --device /dev/dri \
#	-v /dev/shm:/dev/shm \
#	--name chrome \
#	jess/chrome
#
# You will want the custom seccomp profile:
# 	wget https://raw.githubusercontent.com/jfrazelle/dotfiles/master/etc/docker/seccomp/chrome.json -O ~/chrome.json

# Base docker image with OpenGL on Ubuntu 22.04
#FROM ubuntu:22.04
FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu22.04
LABEL maintainer "chamilton614"

# Install Edge
RUN apt update && apt install -y \
	apt-transport-https \
	ca-certificates \
    software-properties-common \
	curl \
	gnupg \
	hicolor-icon-theme \
	libcanberra-gtk* \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	#libpangox-1.0-0 \
    alsa-utils \
	libsm6 \
	libpulse0 \
    libasound2 \
    libasound2-plugins \
	libv4l-0 \
	fonts-symbola \
	--no-install-recommends
RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
    && install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ \
    && echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list \
	&& apt update && apt install -y \
	microsoft-edge-stable \
	--no-install-recommends \
	&& apt purge --auto-remove -y curl \
	&& rm -rf /var/lib/apt/lists/*

# Add edge user
RUN groupadd -r edge && useradd -r -g edge -u 1000 -G audio,video edge \
    && mkdir -p /home/edge/Downloads && chown -R edge:edge /home/edge

COPY local.conf /etc/fonts/local.conf

# Run Edge as non privileged user
USER edge

# Autorun edge
ENTRYPOINT [ "microsoft-edge" ]
CMD [ "--user-data-dir=/data" ]
