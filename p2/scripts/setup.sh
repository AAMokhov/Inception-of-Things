#!/bin/bash

# install k3s master server
export K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface eth1"
curl -sfL https://get.k3s.io | sh -s -

# install tool for checking eth1
sudo yum install net-tools -y

#install apps in claster k3s
kubectl apply -f /vagrant/confs/

sleep 10
echo "[INFO]  Successfully installed k3s on server node and all deployments!"
