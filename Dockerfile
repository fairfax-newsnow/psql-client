FROM alpine:3.6

RUN apk --update add postgresql-client && rm -rf /var/cache/apk/*

RUN mkdir -p /aws && \
    apk -Uuv add groff less python py-pip && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

ENTRYPOINT [ "psql" ]
