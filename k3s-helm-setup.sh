#!/usr/bin/env bash
# This script installs k3s and Helm v4; use at your own risk
# WARNING - EXPERIMENTAL - DO NOT RUN UNLESS YOU KNOW WHAT YOU ARE DOING

curl -sfL https://get.k3s.io | sh -
firewall-cmd --permanent --add-port=6443/tcp
firewall-cmd --permanent --zone=trusted --add-source=10.42.0.0/16
firewall-cmd --permanent --zone=trusted --add-source=10.43.0.0./16
firewall-cmd --reload

curl -fsSl -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4

chmod 700 get_helm.sh
./get_helm.sh

