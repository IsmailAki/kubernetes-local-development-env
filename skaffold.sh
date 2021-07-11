#!/bin/bash
if [[ $(ssh-keygen -F [127.0.0.1]:2222 | grep -c found) = 1 ]]; then  
    ssh-keygen -f "/root/.ssh/known_hosts" -R "[127.0.0.1]:2222"
fi
if [ -f 'k3s.yaml' ]; then  
    rm -f k3s.yaml
fi
scp -P 2222 -i .vagrant/machines/ubuntu_k3s/virtualbox/private_key vagrant@127.0.0.1:/etc/rancher/k3s/k3s.yaml .