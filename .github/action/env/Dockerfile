FROM alpine:3.9

RUN env || true
RUN ip addr || true
RUN ifconfig || true
RUN apk add curl && curl http://caius.name/_rdns.php || true
