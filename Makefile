.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


run:
	docker run --rm -it -p 8888:8888 -v $(shell pwd)/code:/home/jovyan/work  jupyter/base-notebook:python-3.7.3


