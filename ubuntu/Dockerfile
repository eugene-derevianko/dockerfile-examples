FROM ubuntu:trusty
MAINTAINER Eugene <eugene@symulakr.com>

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN echo $'#!/bin/sh\nexit 101' > /usr/sbin/policy-rc.d
RUN chmod +x /usr/sbin/policy-rc.d

RUN \
  apt-get update && \
  apt-get -y install \
          unzip \
          curl \
          git-core && \
  rm -rf /var/lib/apt/lists/*

COPY tcp_wait.sh tcp_wait.sh
