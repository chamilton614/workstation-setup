#!/bin/bash

##docker run -d \
 #   --rm \
 #   --net host \
 #   --cpuset-cpus 2 \
 #   --memory 1024mb \
 #   -v /etc/localtime:/etc/localtime:ro \
 #   -v /tmp/.X11-unix:/tmp/.X11-unix \
 #   -e "DISPLAY=unix$DISPLAY" \
 #   -v "${HOME}/Downloads:/root/Downloads" \
 #   -v "${HOME}/Pictures:/root/Pictures" \
 #   -v "${HOME}/.chrome:/data" \
 #   -v /var/run/dbus:/var/run/dbus \
 #   -v /dev/shm:/dev/shm \
 #   -v /etc/hosts:/etc/hosts \
 #   --security-opt seccomp=$HOME/chrome.json \
 #   --device /dev/snd \
 #   --device /dev/dri \
 #   --device /dev/video0 \
 #   --device /dev/usb \
 #   --device /dev/bus/usb \
 #   --group-add audio \
 #   --group-add video \
 #   --name chrome1 \
 #   chrome --user-data-dir=/data "$*"

creationDate=$(date '+%Y%m%d-%H%M%S')

#Create Edge Profile for Container
cp -R ${HOME}/.config/microsoft-edge-container ${HOME}/.config/microsoft-edge-container-$creationDate

#docker run -it \
#    --rm \
#    --net host \
#    --cpuset-cpus 2 \
#    --memory 1024mb \
#    -v /etc/localtime:/etc/localtime:ro \
#    -v /tmp/.X11-unix:/tmp/.X11-unix \
#    -e "DISPLAY=unix$DISPLAY" \
#    --security-opt seccomp=unconfined \
#    -v "${HOME}/Downloads:/home/edge/Downloads" \
#    -v "${HOME}/Pictures:/home/edge/Pictures" \
#    -v "${HOME}/.config/microsoft-edge-container-$creationDate:/data" \
#    -v /var/run/dbus:/var/run/dbus \
#    -v /dev/shm:/dev/shm \
#    -v /etc/hosts:/etc/hosts \
#    -v "/etc/alsa:/etc/alsa" \
#    -v "/usr/share/alsa:/usr/share/alsa" \
#    -v "${HOME}/.config/pulse:/.config/pulse" \
#    -v "/run/user/$UID/pulse/native:/run/user/$UID/pulse/native" \
#    --env "PULSE_SERVER=unix:/run/user/$UID/pulse/native" \
#    --device /dev/snd \
#    --device /dev/dri \
#    --device /dev/video0 \
#    --device /dev/usb \
#    --device /dev/bus/usb \
#    --group-add audio \
#    --group-add video \
#    --env ALSA_CARD="HDA Intel" \
#    --name msedge-$creationDate \
#    msedge-opengl --user-data-dir=/data "$*"

#--security-opt seccomp=${HOME}/msedge.json \
#--security-opt seccomp=unconfined \

#cp /usr/share/containers/seccomp.json $HOME

podman run -it \
    --rm \
    --net host \
    --memory 1024mb \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e "DISPLAY=unix$DISPLAY" \
    --security-opt seccomp=${HOME}/seccomp.json \
    -v "${HOME}/Downloads:/home/edge/Downloads" \
    -v "${HOME}/Pictures:/home/edge/Pictures" \
    -v "${HOME}/.config/microsoft-edge-container-$creationDate:/data" \
    -v /var/run/dbus:/var/run/dbus \
    -v /dev/shm:/dev/shm \
    -v /etc/hosts:/etc/hosts \
    -v "/etc/alsa:/etc/alsa" \
    -v "/usr/share/alsa:/usr/share/alsa" \
    -v "${HOME}/.config/pulse:/.config/pulse" \
    -v "/run/user/$UID/pulse/native:/run/user/$UID/pulse/native" \
    --env "PULSE_SERVER=unix:/run/user/$UID/pulse/native" \
    --device /dev/snd \
    --device /dev/dri \
    --device /dev/video0 \
    --device /dev/usb \
    --device /dev/bus/usb \
    --group-add audio \
    --group-add video \
    --env ALSA_CARD="HDA Intel" \
    --name msedge-$creationDate \
    msedge-pm --user-data-dir=/data "$*"










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









