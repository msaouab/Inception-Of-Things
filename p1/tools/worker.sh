#!/bin/bash

sudo apk update
chmod 400 private_key
sudo scp -q -o StrictHostKeyChecking=no -i private_key vagrant@192.168.56.110:/home/vagrant/token .
curl -sfL https://get.k3s.io/ | K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface=eth1" K3S_URL=https://192.168.56.110:6443/ K3S_TOKEN=`cat token` sh -
