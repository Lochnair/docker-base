FROM lochnair/base:ubuntu
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Mono base image (Ubuntu)"

# Add the Xamarin repository
RUN \
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list

# Install the Mono runtime
RUN \
apt update && \
apt install --no-install-recommends -y \
	ca-certificates-mono \
    mono-runtime && \
rm -rf /var/lib/apt/lists/*