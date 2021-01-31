FROM alpine

RUN apk update && apk add \
  snapcast-client \
  avahi

ENTRYPOINT ["snapclient"]
