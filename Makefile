GIT_TAG := 0.1.0

all: lint

changelog:
	docker run --quiet --rm --volume "${PWD}:/mnt/source" --workdir /mnt/source ghcr.io/cbdq-io/gitchangelog > CHANGELOG.md

lint:
	helm lint charts/*

tag:
	@echo $(GIT_TAG)
