interface=${1:-vcan0}

# Load the vcan kernel module
sudo modprobe vcan

# Create the virtual CAN interface
sudo ip link add dev ${interface} type vcan

# Bring the virtual CAN interface online
sudo ip link set up ${interface}