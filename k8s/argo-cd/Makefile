.PHONY: up
up:
	helm repo add argo-cd https://argoproj.github.io/argo-helm
	helm dep update .
	helm install argo-cd . -n argo-cd --create-namespace

.PHONY: down
down:
	helm uninstall argo-cd -n argo-cd || true
	kubectl delete crd applications.argoproj.io || true
	kubectl delete crd applicationsets.argoproj.io || true
	kubectl delete crd appprojects.argoproj.io || true
