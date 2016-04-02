FROM alpine

RUN apk --update add --upgrade --virtual build-dependencies \
    go \
    git \
    g++

ENV GOPATH $HOME

WORKDIR $GOPATH/src/github.com/sammy007/ether-proxy

RUN go get github.com/sammy007/ether-proxy.git; exit 0 &&  cd $PWD \
    go build main.go && \
    go clean

RUN apk del --purge build-dependencies

ENTRYPOINT ["/bin/sh"]
