# run on hosts on LAN
# assumes appropriate NICs are enabled / disabled

### configuratoin ###

# network interface to LAN
NETWORK_INTERFACE="eth0"

# address of this machine on the LAN
HOST_ADDRESS="10.0.0.1"

# subnet address of this LAN
SUBNET_ADDRESS="10.0.0.0/24"

# LAN's gateway to Internet
GATEWAY_ADDRESS="10.0.0.0"

### code - do not touch! ###

# configure network properties
ip addr replace $HOST_ADDRESS dev $NETWORK_INTERFACE valid_lft forever preferred_lft forever
ip route replace $SUBNET_ADDRESS dev $NETWORK_INTERFACE proto static
ip route replace default via $GATEWAY_ADDRESS dev $NETWORK_INTERFACE proto static

