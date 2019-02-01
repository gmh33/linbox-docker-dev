FROM ubuntu:latest

RUN set -ex; \
	apt-get update; \
	apt-get upgrade -y; \
	apt-get install -y make automake autoconf git g++ g++-7 gcc gcc-7 libtool m4; \
	apt-get install -y liblapack-dev libblas-dev libgmp-dev libntl-dev pkg-config; \
	apt-get autoremove --purge -y;

VOLUME "/root/code"
ENV PKG_CONFIG_PATH /root/opt/givaro/lib/pkgconfig/:/root/opt/fflas-ffpack/lib/pkgconfig/

ENTRYPOINT [ "/bin/bash" ]