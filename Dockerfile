FROM ubuntu:12.04
MAINTAINER Jose Miguel de la Casa <nacicansao@gmail.com>

RUN apt-get update
RUN apt-get -y install git gcc make libpcap-dev build-essential cmake libgmp3-dev gengetopt libpcap-dev flex byacc
RUN mkdir /home/workspace
RUN cd /home/workspace/ ; git clone https://github.com/zmap/zmap.git
RUN cd /home/workspace/zmap ; cmake ./; make; make install


