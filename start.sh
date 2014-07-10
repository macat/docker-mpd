#!/bin/bash
mountpoint="/var/lib/mpd/music"
mkdir /var/run/mpd
mpd --no-daemon --stdout -v /etc/mpd.conf
