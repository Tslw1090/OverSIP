FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y build-essential git libev-dev libssl-dev ruby ruby-dev libsqlite3-dev libevent-dev && \
    gem install oversip

COPY etc/oversip.conf /etc/oversip.conf

CMD ["oversip", "--config", "/etc/oversip.conf"]
