FROM alpine:3.3

RUN apk --update add --upgrade --virtual build-dependencies \
    go \
    git \
    g++

ENV GOPATH /go

RUN git clone https://github.com/sammy007/ether-proxy.git /go/src/sammy007/ether-proxy && \
    cd /go/src/sammy007/ether-proxy
    go get; exit 0 && \
    go build -o /bin/ether-proxy -ldflags "-s" main.go

RUN apk del --purge build-dependencies && \
    rm -rf /go

ENTRYPOINT ether-proxy
