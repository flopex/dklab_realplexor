FROM ubuntu:xenial

RUN apt-get update && \
    apt-get install -y \
    g++ \
    libboost-dev \
    libboost-regex-dev \
    libboost-filesystem-dev \
    libboost-system-dev \
    libboost1.48 \
    libev-dev \
    libev4 \
    libmemcached-dev

ADD . /opt/dklab_realplexor

WORKDIR /opt/dklab_realplexor/cpp

RUN bash Make.sh

CMD ["../run.sh"]
