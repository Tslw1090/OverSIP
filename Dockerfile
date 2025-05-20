FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl gnupg build-essential ruby ruby-dev libssl-dev libsqlite3-dev && \
    gem install bundler && \
    gem install oversip

COPY oversip.conf /etc/oversip.conf

CMD ["oversip", "--config", "/etc/oversip.conf"]
