#!/bin/sh

set -e

echo "Waiting for MySQL at db:3306..."

while ! nc -z db 3306; do
  sleep 2
done

echo "MySQL is available — starting backend..."
exec "$@"
