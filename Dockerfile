FROM golang:alpine
RUN echo $(go version)
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server && rm -rf /go/pkg /go/src
ENTRYPOINT ["shadowsocks-server"]
