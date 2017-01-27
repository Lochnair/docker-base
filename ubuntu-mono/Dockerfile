FROM lochnair/base:ubuntu
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Mono base image (Ubuntu)"

# Install the Mono runtime
RUN \
apt update && \
apt install --no-install-recommends -y \
	ca-certificates-mono \
	libmono-cil-dev \
    mono-runtime && \
rm -rf /var/lib/apt/lists/*