SHELL := /bin/bash

.PHONY: check
check:
	kubectl get node
	kubectl get namespace

# minikube delete; minikube start --driver=virtualbox && minikube addons enable ingress
# minikube delete; minikube start --driver=hyperkit && minikube addons enable ingress
# minikube delete; minikube start --driver=hyperkit --cpus 4 --memory 8192 && minikube addons enable ingress
# minikube delete; minikube start --driver=virtualbox --host-only-cidr='172.16.0.1/20' && minikube addons enable ingress
# minikube delete; minikube start --driver=docker
.PHONY: minikube
minikube:
	#minikube delete ; minikube start --driver=hyperkit --cpus 4 --memory 8192
	#minikube delete ; minikube start --driver=hyperkit --cpus 2 --memory 4096
	minikube delete ; minikube start --driver=hyperkit --cpus 2 --memory 2048
	minikube addons enable ingress
	minikube addons list
	make check
	./bin/gen-hosts.sh $$(minikube ip)

# Solution 1:
# minikube addons enable ingress
# minikube addons list
# Solution 2:
#	helm repo add nginx-stable https://helm.nginx.com/stable || true
#	helm repo update
#	helm upgrade --install nginx-ingress nginx-stable/nginx-ingress || true

# microk8s with snap (on ubuntu)
.PHONY: microk8s
microk8s:
	sudo snap install microk8s --classic
	sudo microk8s.enable storage
	sudo microk8s.enable ingress
	sudo microk8s.enable dns
	sudo snap remove kubectl  ## can reinstall with "sudo snap install kubectl --classic"
	sudo snap alias microk8s.kubectl kubectl
	sudo usermod -a -G microk8s $$USER
	microk8s config > ~/.kube/config
	make check
	@echo -n "Please provide IP of this server to access: "; read ip; ./bin/gen-hosts.sh $$ip

.PHONY: index
index:
	./bin/gen-index-html.sh
