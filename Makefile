SHELL := /bin/bash

export TF_PLUGIN_CACHE_DIR ?= $(CURDIR)/.terraform.d/plugin-cache

DIRS := . \
	modules/metric-filter \
	modules/subscription-filter \
	examples/metric_filter_basic \
	examples/subscription_filter_basic

.PHONY: validate fmt lint _init_validate ensure-cache

validate: ensure-cache fmt ## Format, init (cached), and validate all modules/examples
	@echo "Using TF_PLUGIN_CACHE_DIR=$(TF_PLUGIN_CACHE_DIR)"
	@$(MAKE) _init_validate

ensure-cache:
	@mkdir -p "$(TF_PLUGIN_CACHE_DIR)"

_init_validate:
	@set -euo pipefail; \
	for d in $(DIRS); do \
	  echo "==> $$d"; \
	  terraform -chdir=$$d init -backend=false -upgrade=false >/dev/null; \
	  terraform -chdir=$$d validate; \
	done

fmt: ## Run terraform fmt -check -recursive
	@terraform fmt -check -recursive

lint: ## Run TFLint across repo, modules, and examples
	@tflint --init || true
	@tflint -c .tflint.hcl .
	@tflint --chdir modules/metric-filter -c ../../.tflint.hcl
	@tflint --chdir modules/subscription-filter -c ../../.tflint.hcl
	@tflint --chdir examples/metric_filter_basic -c ../../.tflint.hcl
	@tflint --chdir examples/subscription_filter_basic -c ../../.tflint.hcl

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS=":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
