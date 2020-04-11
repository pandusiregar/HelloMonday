FROM jenkins/jenkins:lts

USER root

RUN apt-get update \
    && apt-get install -y locales jq zip git \
    && sed -i 's|# en_US.UTF-8|en_US.UTF-8|' /etc/locale.gen \
    && dpkg-reconfigure locales

#install python
RUN apt-get install python2.7 -y && ln -sf /usr/bin/python2.7 python

#install git-crypt
RUN apt-get install git-crypt -y

COPY pluginslist.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/pluginslist.txt
