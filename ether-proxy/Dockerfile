FROM alpine

RUN apk --update add --upgrade --virtual build-dependencies \
    go \
    git \
    g++

WORKDIR go
RUN export GOPATH="/go"
RUN echo $GOPATH

WORKDIR src
WORKDIR github.com/sammy007/ether-proxy

RUN git clone https://github.com/sammy007/ether-proxy.git $PWD && cd $PWD

RUN echo $GOPATH

RUN export GOPATH=/go && /
    go get && /
    go build && /
    go clean

RUN apk del --purge build-dependencies

ENTRYPOINT main
