#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2AD803D1-306A-80F9-B40F-18ECC6CF2F01"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

