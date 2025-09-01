all: lint

lint:
	helm lint charts/*

tag:
	@yq -r .version charts/kfp-pg/Chart.yaml
