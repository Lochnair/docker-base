FROM lochnair/base:alpine
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Mono base image (Alpine)"

ARG MONO_VERSION="4.8.0.478"

# Install build dependencies
RUN \
apk add \
    --no-cache \
    --update \
    autoconf \
    automake \
    g++ \
    gcc \
    libstdc++ \
    libtool \
    make

# Download Mono tarball
RUN \
curl -L -o "/tmp/mono.tar.bz2" "http://download.mono-project.com/sources/mono/mono-${MONO_VERSION}.tar.bz2"

# Compile Mono
RUN \
cd /tmp && \
tar xf "mono.tar.bz2" && \
cd "mono-${MONO_VERSION}" && \
./configure --prefix=/usr && \
make -j4 && \
make install