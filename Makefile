p: ## git (add->commit->push)
	@git add README.md
	@git commit -m $m
	@git push origin main

export a=`git commit -m`
export b=`git commit -m "mod: autocommit"`
cond: ##
	@git add -A
	@echo $(if $(m)\
		, $(a) "$(m)"\
		, $(b)\
	)
# help
.PHONY:	h
h:	## this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'