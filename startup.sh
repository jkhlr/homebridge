cp /defaults/package.json /homebridge/package.json
accessories=$(jq '.accessories' < /defaults/accessories.json)
config=$(jq ".accessories=$accessories" < /homebridge/config.json)
echo "$config" > /homebridge/config.json