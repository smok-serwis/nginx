#!/bin/bash

mkdir -p /etc/nginx/ssl

if [ -d /run/secrets ]; then
  if [ -f /etc/nginx/nginx.conf ]; then
    mv /run/secrets/nginx.conf /etc/nginx/nginx.conf
  fi
  
  cp -rf /run/secrets/*.conf /etc/nginx/conf.d/
  cp -rf /run/secrets/*.key /etc/nginx/ssl/
  cp -rf /run/secrets/*.crt /etc/nginx/ssl/
fi

exec "$@"
