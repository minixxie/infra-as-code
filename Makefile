.PHONY: install-tools
install-tools:
	brew tap hashicorp/tap && brew install hashicorp/tap/terraform
	pip3 install terraform-local
