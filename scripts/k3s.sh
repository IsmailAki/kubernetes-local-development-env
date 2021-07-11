#!/bin/bash
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.21.2+k3s1 K3S_KUBECONFIG_MODE="644" sh -