FROM alpine:3.3

RUN apk add --update tcpdump
VOLUME /data

ENTRYPOINT ["/usr/sbin/tcpdump"]
CMD ["-C", "1000", "-W", "100", "-v", "-w", "/data/dump"]
