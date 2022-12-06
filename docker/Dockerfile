# docker pull ubuntu:20.04
#  docker build -t ubuntu/clash:0.1 .       构建
# docker run -itd  --privileged  --name clash -P ubuntu/clash:0.1

FROM ubuntu:20.04

LABEL maintainer=Eleven

MAINTAINER author "Eleven@gmail.com"

ADD config/sleep.sh /root/sleep.sh

ARG Requirement='wget unzip git net-tools iproute2 iptables curl speedtest-cli openssh-server'

RUN	 cat /etc/init.d/ssh || echo "no ssh"\
  && find / -name sshd
  
RUN	 apt update && apt install -y $Requirement \
  && echo "PermitRootLogin yes" >>  /etc/ssh/sshd_config

WORKDIR /root/

EXPOSE 22
	
ENTRYPOINT /root/sleep.sh && tail -f /dev/null
