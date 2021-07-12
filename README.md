# Vagrant & Kubernetes Local Development Environment

## Why did we create such an environment?

The main reason we created such an environment was to easily deploy the code written by the developer team into a kubernetes cluster, to advance a smooth development process, and to standardize development environments.

---

When the code was changed with Skaffold, the deployment part was solved.

1. Whenever there is a change in the code, scaffold automatically detects it and makes a docker image.
2. Pushing new image to docker hub.
3. Kubernetes pulls and deploys new image.

---
## Why we used k3s?
1. Lightweight Kubernetes development environment.
2. A quick and easy Kubernetes cluster.
3. A single-node configuration
4. It has a low memory/CPU consumption.

## Why we use skaffold?
1. Fast iterative development
2. Production-ready CI/CD pipelines
3. On-cluster application debugging
---
## Requirements

* [Git](https://git-scm.com/downloads)

* [Vagrant](https://www.vagrantup.com/downloads)

* [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)

* [Docker](https://docs.docker.com/engine/install/)

* [Docker Hub Account and Login](https://hub.docker.com/signup)

* [Kubectl](https://kubernetes.io/docs/tasks/tools/)

* [Skaffold](https://skaffold.dev/docs/install/)

---
## How to use this environment

Application addres is: localhost:3000

1. Docker login
```
    docker login
```
2. Create docker hub repo

    https://hub.docker.com/repository/create
    
3. Clone this repo
```
    git clone https://github.com/AbdullahAki/Kubernetes-Challenge.git
```
4. Go inside the repo
```
    cd Kubernetes-Challenge
```
5. Edit skaffold.yaml
```
#7  - image: username/docker-repo
```
6. Start Vagrant cluster
```
    vagrant up
```
7. Get required authentication file
```
    sudo chmod +x skaffold.sh && ./skaffold.sh
```
8. If we are logged in and we want to do build and deploy your app every time your code changes
```
    skaffold --kubeconfig='k3s.yaml' dev
```
9. If we want to build and deploy your App once
```
    skaffold --kubeconfig='k3s.yaml' run
```
10.  If you want to see machine UI, you can SSH into the machine.
```
    vagrant ssh
```
11. Exit machine.
```
    exit
```
12. Delete Vagrant cluster
```
    vagrant destroy
```