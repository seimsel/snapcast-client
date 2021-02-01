FROM alpine

RUN apk update && apk add \
  snapcast-client \
  avahi

RUN printf "[server]\nenable-dbus=no\n" >> /etc/avahi/avahi-daemon.conf
COPY ./entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
