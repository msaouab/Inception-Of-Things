#!/bin/bash

# sudo apk update
# # curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface=eth1" sh -
# curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig-mode=644 --bind-address=192.168.56.110 --node-ip=192.168.56.110 --tls-san $(hostname) --advertise-address=192.168.56.110" sh -
# # sleep 10

# Update package list and install dependencies
sudo apk update
sudo apk add --no-cache curl vim

# Install K3s
curl -sfL https://get.k3s.io | sh -
sleep 5
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

while [ ! -f /var/lib/rancher/k3s/server/node-token ]; do
	echo "Waiting for node token..."
    sleep 1
done

sudo chmod +r /etc/rancher/k3s/k3s.yaml

kubectl apply -f /home/vagrant/confs/.