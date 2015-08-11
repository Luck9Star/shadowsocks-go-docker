FROM golang:latest
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server
ENV TCP_CONGESTION hybla
COPY ${TCP_CONGESTION}.conf /etc/sysctl.conf
ENTRYPOINT ["shadowsocks-server"]
