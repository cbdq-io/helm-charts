GIT_TAG := 0.1.0

all: lint

lint:
	helm lint charts/*

tag:
	@echo $(GIT_TAG)
