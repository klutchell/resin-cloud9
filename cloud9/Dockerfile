FROM resin/raspberrypi3-node:8.11.2

LABEL maintainer="kylemharding@gmail.com"

# enable systemd
ENV INITSYSTEM on

# set c9 workspace and port
ENV C9_WORKSPACE /workspace
ENV C9_PORT 8080

# install updates and common utilities
RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && apt-get install -yq --no-install-recommends \
	apt-transport-https \
	bash-completion \
	ca-certificates \
	curl \
	tmux \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install docker
RUN curl -sSL https://get.docker.com/ | sh

# work in app dir for cloud9
WORKDIR /usr/src/app

# set the correct uname for rpi3
RUN cp "$(which uname)" "/bin/uname.orig" \
	&& echo '#!/bin/sh\n/bin/uname.orig $* | sed "s/armv8l/armv7l/"' > "$(which uname)"

# clone & install cloud9 core 
RUN git clone --depth 1 https://github.com/c9/core.git . \
	&& npm config set unsafe-perm true \
	&& scripts/install-sdk.sh

# copy src files
COPY start.sh ./

# store c9 workspace in a volume
VOLUME $C9_WORKSPACE /root/.c9

# run start script on boot
CMD ["/bin/sh", "start.sh"]

