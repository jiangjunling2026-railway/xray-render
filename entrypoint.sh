#!/bin/sh
: "${UUID:?UUID env var is required}"
PORT="${PORT:-10000}"
sed -e "s/__UUID__/${UUID}/g" -e "s/__PORT__/${PORT}/g" /etc/xray/config.json.template > /etc/xray/config.json
exec /usr/local/bin/xray run -config /etc/xray/config.json
