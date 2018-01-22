[![](https://images.microbadger.com/badges/version/dceschmidt/openvpn-proxy.svg)](https://hub.docker.com/r/slobberbone/openvpn-proxy)
[![](https://images.microbadger.com/badges/image/dceschmidt/openvpn-proxy.svg)](https://hub.docker.com/r/slobberbone/openvpn-proxy)

# docker-openvpn-proxy
Docker OpenVPN Client and Squid Proxy Server
Additional : Add an environment variable named "OPENVPN_SERVER_ADDRESS=nt.vpnserver.com" to set the dns name or ip of the vpn server. Once done, all output traffic will be blocked if vpn interface or connection down.

A script /root/check_public_ip.sh allow you to check your public ip address.
Open two console, on to run the script (loop) and another to kill vpn connection :
...
$ killall openvpn
...

you can kill several time and check in another console that the only public ip is the vpn one, if vpn down, you have no external access.

## Run container from Docker registry
To run the container use this command:

```
$ docker run --privileged  -d \
              -e "OPENVPN_PROVIDER=PIA" \
              -e "OPENVPN_CONFIG=Netherlands" \
              -e "OPENVPN_SERVER_ADDRESS=nt.vpnserver.com" \
              -e "OPENVPN_USERNAME=user" \
              -e "OPENVPN_PASSWORD=pass" \
              -p 1022:22 \
              -p 3128:3128 \
              slobberbone/openvpn-proxy
```

Now you can connect your application to a proxy `localhost:3128`.


## OpenVPN configuration
All OpenVPN configuration are explained at [schmas/docker-openvpn-client](https://github.com/schmas/docker-openvpn-client).
