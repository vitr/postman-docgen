FROM alpine:3.11

RUN apk add curl

RUN curl https://raw.githubusercontent.com/thedevsaddam/docgen/v3/install.sh -o install.sh && chmod +x install.sh && /bin/ash ./install.sh

WORKDIR /data

VOLUME [ "/data" ]

ENTRYPOINT [ "docgen" ]
