test:
	helm lint --strict charts/*

release:
	helm dependencies build $(shell find charts -mindepth 1 -maxdepth 1 -type d)
	helm package --destination docs $(shell find charts -mindepth 1 -maxdepth 1 -type d)
	helm repo index docs

.PHONY: test release
