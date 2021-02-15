export COMMIT_MESSAGE=autocommit > README.md
export IF_COMMIT_MESSAGE=`git commit -m`
export IF_NO_COMMIT_MESSAGE=`git commit -m "mod: $(COMMIT_MESSAGE)"`
p: ## git (add->commit->push)
	@git add README.md
	@echo $(if $(m)\
		, $(IF_COMMIT_MESSAGE) "$(m)"\
		, $(IF_NO_COMMIT_MESSAGE)\
	)
	@git push origin main

export DIR_MD=contents
export MD_CONTENTS=`\find ./$(DIR_MD) -name '*.md' | sort`

generate:
	@cat ./_index.md > README.md
	@echo "\n\n" >> README.md
	@for f in $(MD_CONTENTS); do\
		echo $$f;\
		cat $$f >> README.md;\
		echo "\n\n" >> README.md;\
	done

# poetry
install:
	@curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
	@poetry self:update

# help
.PHONY:	h
h:	## this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'