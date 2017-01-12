FROM ubuntu:latest

MAINTAINER Tatsuya Kobayashi pikopiko28@gmail.com

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && \
apt-get install -y --no-install-recommends wget curl && \
wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -P /root && \
dpkg -i /root/erlang-solutions_1.0_all.deb && \
rm /root/erlang-solutions_1.0_all.deb && \
curl -sL https://deb.nodesource.com/setup_6.x | sh - && \
apt-get update && \
apt-get install -y --no-install-recommends build-essential inotify-tools esl-erlang elixir nodejs npm mysql-common mysql-client && \
ln -s /usr/bin/nodejs /usr/bin/node && \
mix local.rebar --force && \
mix local.hex --force
