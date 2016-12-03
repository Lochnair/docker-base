FROM lochnair/base:alpine
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Base image w/Python 2.7"

# Install Python
RUN apk add \
    --no-cache \
    --update \
    python2 \
    python2-dev

# Make sure pip is installed
RUN python -m ensurepip --upgrade

# Make sure we have the latest version
RUN pip install --upgrade pip

# Install build-base (G++, GCC, make)
# We might need this to compile Python modules.
RUN apk add \
    --no-cache \
    --update \
    build-base
