#!/bin/bash

SERVER_IP = "192.168.56.110"

./k3s_master.sh $SERVER_IP;
./k3d_install.sh $SERVER_IP
./argocd_install.sh $SERVER_IP