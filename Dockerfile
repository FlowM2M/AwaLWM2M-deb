FROM ubuntu:16.04
MAINTAINER David Antliff <david.antliff@imgtec.com>

ENV DEBIAN_FRONTEND noninteractive

# install package dependencies
RUN apt-get update -yq && apt-get install -yq \
	apt-utils \
	git \
	curl \
	make \
	build-essential \
	debhelper \
	dh-systemd \
	libssl-dev \
	zlib1g-dev \
	libbz2-dev \
	libreadline-dev \
	libxml2-dev \
	libxslt-dev \
	doxygen \
	graphviz \
	mercurial \
	cmake \
	wget
# apt-get clean is automatic for Ubuntu images

WORKDIR /build
#COPY ubuntu/awa/debian /build/ubuntu/awa
#COPY build.sh /build

#RUN /build/build.sh



