FROM ubuntu:14.04
MAINTAINER Attila Maczak <attila@maczak.hu>

# must run in privileged mode (-privileged)

RUN apt-get -qq update
RUN locale-gen en_US en_US.UTF-8
RUN dpkg-reconfigure locales 

RUN apt-get install -y bash mpd

ADD mpd.conf /etc/mpd.conf
ADD start.sh /home/mpd/start.sh

RUN chmod +x /home/mpd/start.sh

EXPOSE 6600 8000

CMD /home/mpd/start.sh
