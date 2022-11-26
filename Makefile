.PHONY: install-tools
install-tools: terraform docker k8s

.PHONY: terraform
terraform:
	brew tap hashicorp/tap && brew install hashicorp/tap/terraform
	pip3 install terraform-local

.PHONY: docker
docker:
	brew install --cask docker
	brew install docker-compose

# https://minikube.sigs.k8s.io/docs/start/
# Install Minikube - macOS - https://kubernetes.io/docs/tasks/tools/install-minikube/#macos
#curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
.PHONY: k8s
k8s:
	brew install hyperkit
	brew install minikube
	brew install kubernetes-cli
	brew install helm

.PHONY: tilt
tilt:
	curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
