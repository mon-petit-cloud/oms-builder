FROM node:10-alpine

RUN apk add --no-cache git libc6-compat

RUN ln -s /lib/libc.musl-x86_64.so.1 /lib/ld-linux-x86-64.so.2

WORKDIR /oms

ENTRYPOINT ["/bin/sh", "-c"]
