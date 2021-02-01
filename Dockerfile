FROM alpine

RUN apk update && apk add \
  snapcast-client \
  avahi

RUN printf "[server]\nenable-dbus=no\n" >> /etc/avahi/avahi-daemon.conf

ENTRYPOINT ["sh", "-c", "avahi-daemon --daemonize --no-drop-root && snapclient"]
