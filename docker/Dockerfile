# docker pull ubuntu:20.04
#  docker build -t ubuntu/clash:0.1 .       构建
# docker run -itd  --privileged  --name clash -P ubuntu/clash:0.1

FROM ubuntu:20.04

LABEL maintainer=Eleven

MAINTAINER author "Eleven@gmail.com"

ADD sleep.sh /root/sleep.sh
ADD expect_01.sh /root/expect_01.sh

ARG Requirement='wget unzip git curl speedtest-cli expect openssh-server expect'
ENV DEBIAN_FRONTEND=noninteractive
RUN	apt update && apt install -y $Requirement \
	&& echo "PermitRootLogin yes" >>  /etc/ssh/sshd_config \
	/usr/sbin/sshd restart \
	chmod +X /root/expect_01.sh

	#&& /usr/bin/expect /root/expect_01.sh \
WORKDIR /root/

EXPOSE 22
	
ENTRYPOINT /root/sleep.sh && tail -f /dev/null
