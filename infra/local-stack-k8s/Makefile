.PHONY: check
check:

.PHONY: up
up:
	helm repo add localstack-repo https://helm.localstack.cloud || true
	helm upgrade --install localstack localstack-repo/localstack -n localstack --create-namespace
	kubectl apply -f ./ingress.yaml

.PHONY: down
down:
	kubectl delete -f ./ingress.yaml
	helm uninstall localstack
