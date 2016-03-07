FROM olivierpt/centos-lsb

MAINTAINER olivier.pillaudtirard@gmail.com

RUN yum update -y && yum install -y gedit

RUN useradd -d /home/gedit -m gedit

RUN dbus-uuidgen > /etc/machine-id

USER gedit

CMD /usr/bin/gedit
