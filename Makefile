.PHONY: help

help: ## Help yourself
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


run: ## Execute an environment in a basic python notebook environment
	docker run --rm -it -p 8888:8888 -v $(shell pwd)/:/home/jovyan/work  counting_letters:latest
	#docker run --rm -it -p 8888:8888 -v $(shell pwd)/code:/home/jovyan/work  jupyter/base-notebook:python-3.7.3

build: ## Build a local image to run the notebook.
	docker build -t counting_letters .



