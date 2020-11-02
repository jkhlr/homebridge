FROM oznu/homebridge:debian-no-avahi-raspberry-pi

RUN apt update -qy && apt install -qy jq

COPY accessories.json package.json startup.sh /defaults/