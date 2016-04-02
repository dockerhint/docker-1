FROM alpine

RUN apk --update add --upgrade --virtual build-dependencies \
    go \
    git \
    g++

ENV GOPATH $HOME/go

WORKDIR $GOPATH
WORKDIR src
WORKDIR github.com/sammy007/ether-proxy

RUN git clone https://github.com/sammy007/ether-proxy.git $PWD && cd $PWD

RUN go build main.go && go clean

RUN apk del --purge build-dependencies

ENTRYPOINT main
