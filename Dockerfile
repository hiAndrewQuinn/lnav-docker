FROM alpine:latest

RUN apk add --no-cache lnav

ENTRYPOINT ["lnav"]

# yes, it literally is three lines.
