# ./wg setconf wg0 wg0/wg0.conf
# ./wg setconf wg1 wg1/wg1.conf
# ip link set wg0 up
# ip link set wg1 up
# ./wg

./wg setconf wg0 wg0/wg0.conf
ip -4 address add 10.0.0.1/32 dev wg0
ip link set mtu 1420 up dev wg0

./wg setconf wg1 wg1/wg1.conf
ip -4 address add 10.0.0.2/32 dev wg1
ip link set mtu 1420 up dev wg0


ip link set wg0 up
ip link set wg1 up
./wg