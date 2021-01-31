FROM alpine

RUN apk add snapcast-client

ENTRYPOINT ["snapclient"]
