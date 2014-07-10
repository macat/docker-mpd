#!/bin/bash
mountpoint="/var/lib/mpd/music"

mpd --no-daemon --stdout -v /etc/mpd.conf
