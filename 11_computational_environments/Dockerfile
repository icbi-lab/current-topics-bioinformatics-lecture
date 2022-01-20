# Start from Ubuntu 18.04
FROM ubuntu:18.04

# Update registries and install necessary utils
RUN apt-get update -y && apt-get install -y \
	build-essential \
	zlib1g-dev \
	unzip \
	wget \
	gcc \
	g++ \
	make \
	git \
	cmake \
	autoconf \
	coreutils \
	locales

# set the environment variables
ENV STAR_version 2.7.10a

# Set working directory
WORKDIR /usr/local/bin/

# Install STAR
RUN wget https://github.com/alexdobin/STAR/archive/${STAR_version}.tar.gz && \
    tar -xzf ${STAR_version}.tar.gz && \
    cd STAR-${STAR_version}/source && \
    make STAR && \
	cp STAR /usr/local/bin && \
	cd /usr/local/bin && \
	rm -rf ${STAR_version}.tar.gz

# Clean up
RUN apt-get autoclean -y && apt-get clean -y

# Add user - avoid root escalation within the container
RUN useradd -ms /bin/bash icbi_user
USER icbi_user

# Set launch working dir and exit
WORKDIR /home/
