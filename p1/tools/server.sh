#!/bin/bash

sudo apk update

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
curl -sfL https://get.k3s.io |  K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface=eth1" sh -
./kubectl version --client

echo "[CONSOLE] Waiting for k3s to start"
sleep 5
sudo chmod +x /var/lib/rancher/k3s/server/
sudo cp /var/lib/rancher/k3s/server/node-token /var/www/