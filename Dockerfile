ARG TAG
FROM alpine:${TAG:-3.9}

RUN set -eux; \
        apk add --no-cache ca-certificates tzdata; \
        find /sbin /bin /usr/bin /usr/local/bin/ -type l  -exec busybox rm -rf {} \;; \
        busybox rm /sbin/apk /bin/busybox
