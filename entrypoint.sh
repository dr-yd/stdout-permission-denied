#!/bin/sh

/usr/bin/supervisord -n -c /etc/supervisord.conf &

if [ "${1#-}" != "$1" ]; then
        echo "Starting php-fpm $@"
        set -- php-fpm "$@"
fi

echo "Running $@"
exec "$@"
