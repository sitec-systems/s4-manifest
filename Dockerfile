FROM debian:jessie
MAINTAINER Robert Lehmann <robert.lehmann@sitec-systems.de>

RUN apt-get update && apt-get install -yq \
	sudo \
	build-essential \
	git \
	python \
	man \
	bash \
	diffstat \
	gawk \
	chrpath \
	wget \
	cpio \
	texinfo \
	lzop \
	apt-utils \
	bc \
	vim \
	zip \
	libx11-dev \
	screen && \
	rm -rf /var/lib/apt-lists/*

RUN groupadd -g 1000 build && \
	useradd -ms /bin/bash -u 1000 -g build build && \
	usermod -aG sudo build

USER build
WORKDIR /home/build
