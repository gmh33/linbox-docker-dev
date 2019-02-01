FROM ubuntu:latest

RUN set -ex; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y vim make automake autoconf git g++ g++-8 gcc gcc-8 \
                       libtool m4 liblapack-dev libblas-dev libgmp-dev \
                       libntl-dev pkg-config; \
    apt-get autoremove --purge -y;

VOLUME "/root/code"
ENV PKG_CONFIG_PATH /root/opt/givaro/lib/pkgconfig/:/root/opt/fflas-ffpack/lib/pkgconfig/

WORKDIR /root/code
ENTRYPOINT [ "/bin/bash" ]