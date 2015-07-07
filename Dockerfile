FROM ubuntu:14.04
MAINTAINER Nick Delitski

ENV    	DEBIAN_FRONTEND noninteractive
RUN		echo "deb http://ppa.launchpad.net/yandex-load/main/ubuntu precise main" >> /etc/apt/sources.list && \
		echo "deb-src http://ppa.launchpad.net/yandex-load/main/ubuntu precise main" >> /etc/apt/sources.list && \
		apt-get update -y && \
		apt-get install -y --force-yes yandex-load-tank-base

ADD 	./test/load.ini /test/load.ini
WORKDIR /test
ENTRYPOINT ["yandex-tank", "load.ini"]


