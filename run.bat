@echo off

docker run --rm --mount type=bind,source="%cd%/certs",target=/openvpn --mount type=bind,source="%cd%\easy-rsa",target=/etc/easy-rsa vpn-docker:latest /data/generate_keys.sh %*
rem docker run --rm -it --mount type=bind,source="%cd%/certs",target=/openvpn --mount type=bind,source="%cd%\easy-rsa",target=/etc/easy-rsa vpn-docker:latest %*