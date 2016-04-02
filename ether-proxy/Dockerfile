FROM alpine:3.3

ENTRYPOINT ["/bin/ether-proxy"]

ENV GOPATH /home/go
ENV PACKAGE github.com/sammy007/ether-proxy

RUN apk --update add -ut build-deps go git g++

RUN git clone https://$PACKAGE.git $GOPATH/src/$PACKAGE && cd $GOPATH/src/$PACKAGE

RUN go get; exit 0
RUN go build -o /bin/ether-proxy -ldflags "-s" main.go

RUN apk del --purge build-deps && rm -rf $GOPATH 
