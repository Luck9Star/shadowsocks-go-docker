FROM golang:latest
RUN echo $(go version) && go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server && rm -rf /go/pkg /go/src
ENTRYPOINT ["shadowsocks-server"]
