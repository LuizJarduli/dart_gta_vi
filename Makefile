SHELL := /bin/bash
.PHONY: 
	serve help

EXPECTED_PORT := 8080

help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

kill_port: ## Kill the process listening on the expected port, if any
	@pids=$$(lsof -ti tcp:$(EXPECTED_PORT) -sTCP:LISTEN); \
	if [ -n "$$pids" ]; then \
		echo "Killing process(es) on port $(EXPECTED_PORT): $$pids"; \
		kill $$pids; \
		sleep 1; \
		still=$$(lsof -ti tcp:$(EXPECTED_PORT) -sTCP:LISTEN); \
		if [ -n "$$still" ]; then kill -9 $$still; fi; \
	else \
		echo "No process on port $(EXPECTED_PORT)"; \
	fi

serve: ## Start and serve the de development server
	@rm -rf ./build
	@jaspr serve

lint: ## perform an analyzer run
	@dart analyze --dry-run

lint_fix: ## perform an analyzer run with fix
	@dart fix --apply

bundle_application: ## Build the bundle application
	@rm -rf build
	@make kill_port
	@jaspr build
