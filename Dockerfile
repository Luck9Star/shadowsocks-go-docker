FROM golang:latest
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server
ENTRYPOINT ["shadowsocks-server"]
