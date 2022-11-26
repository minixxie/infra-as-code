SHELL := /bin/bash

.PHONY: check
check:
	kubectl get node
	kubectl config get-clusters
	kubectl config current-context
	kubectl get namespace
	kubectl get all -A

.PHONY: minikube
minikube:
	minikube delete; minikube start --driver=hyperkit --cpus 2 --memory 4096
	# minikube delete; minikube start --driver=hyperkit --cpus 4 --memory 8192
	minikube addons enable ingress
	minikube addons list
	make check
	make hosts

.PHONY: hosts
hosts:
	@./.bin/gen-hosts.sh $$(minikube ip)
