#!/bin/bash

sudo apk update
curl -sfL https://get.k3s.io |  K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface=eth1" sh -
# sleep 10
