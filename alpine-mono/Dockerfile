FROM lochnair/base:alpine-glibc
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Mono base image (Alpine)"

# Install Mono
RUN \
curl -L -o "/tmp/mono.pkg.tar.xz" "https://www.archlinux.org/packages/extra/x86_64/mono/download/" && \
tar -xf "/tmp/mono.pkg.tar.xz" && \
rm /tmp/*