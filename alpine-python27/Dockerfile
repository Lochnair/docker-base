FROM lochnair/base:alpine
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Python 2.7 base image (Alpine)"

# Install Python
RUN \
apk add \
    --no-cache \
    --update \
    python2 \
    python2-dev && \

# Make sure pip is installed
python -m ensurepip --upgrade && \

# Make sure we have the latest version
pip install --upgrade pip && \

# Install build-base (G++, GCC, make)
# We might need this to compile Python modules.
apk add \
    --no-cache \
    --update \
    build-base
