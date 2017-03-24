# USAGE:
#
#PULL the image:
#   docker pull olivierpt/atom
#
#   docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
#       -v /dev/shm:/dev/shm \
#       -v ${HOME}:/home/atom \
#       -e DISPLAY=${DISPLAY} olivierpt/atom &
#
# BASE IMAGE: Centos LSB
FROM centos:latest

MAINTAINER olivier.pillaudtirard@gmail.com

RUN yum update -y && \
  yum install -y epel-release curl

RUN yum repolist

RUN cd /etc/yum.repos.d && curl -O https://winswitch.org/downloads/CentOS/winswitch.repo

RUN yum repolist

RUN yum install -y pangox-compat \
    xpra \
    which \
    xorg-x11-server-Xvfb \
    emacs

RUN useradd -d /home/userxpra -m userxpra

RUN dbus-uuidgen > /etc/machine-id

USER userxpra

# expose HTML5 port (experimental)
EXPOSE 8080
# expose raw TCP port
EXPOSE 10010

CMD ["xpra", "start", ":100", "--start-child=emacs",  "--daemon=off", "--bind-tcp=0.0.0.0:10010", "--html=0.0.0.0:8080"]
