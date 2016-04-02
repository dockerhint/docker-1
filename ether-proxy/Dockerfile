FROM alpine

RUN apk --update add --upgrade --virtual build-dependencies \
    go \
    git \
    g++

WORKDIR $HOME
WORKDIR go
RUN GOPATH=$PWD
RUN export GOPATH
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
