# narf-mpd

Docker image for mounting an NFS share and running mpd on it.

### USAGE

run as so:

`docker run -privileged -e -p 6600:6600 -p 8000:8000 -t macat/mpd`
