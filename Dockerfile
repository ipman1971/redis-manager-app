FROM node:7.10-alpine

RUN mkdir -p /usr/src

WORKDIR /usr/src

RUN set -x && \
    apk update && apk upgrade && \
    apk add --no-cache bash git && \
    git clone https://github.com/joeferner/redis-commander.git && \
    cd redis-commander && \
    npm install -g redis-commander

ENTRYPOINT [ "redis-commander" ]

EXPOSE 8081
