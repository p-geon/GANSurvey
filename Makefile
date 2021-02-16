# ENVs
export PWD=`pwd`
# -----------------------------------
export COMMIT_MESSAGE=autocommit > README.md
export IF_COMMIT_MESSAGE=`git commit -m`
export IF_NO_COMMIT_MESSAGE=`git commit -m "mod: $(COMMIT_MESSAGE)"`
export GIT_BRANCH_NAME=`git symbolic-ref --short HEAD`
p: ## git (add->commit->push)
	@make generate
	@git add README.md
	@echo $(if $(m)\
		, $(IF_COMMIT_MESSAGE) "$(m)"\
		, $(IF_NO_COMMIT_MESSAGE)\
	)
	@git push origin $(GIT_BRANCH_NAME)

# -----------------------------------
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

# -----------------------------------
# citation
export NAME_CONTAINER=get_citation
export DIR_CITATION=citation

br: ## build&run
	@make b
	@make r
b: ## build
	cd $(DIR_CITATION) &&\
	docker build -f ./Dockerfile -t $(NAME_CONTAINER) .
r: ## run
	docker run -it --rm -v $(PWD)/$(DIR_CITATION):/work/ $(NAME_CONTAINER)
lab: ## jupyter lab
	docker run -it --rm -v $(PWD)/$(DIR_CITATION):/work/ -p 8888:8888 $(NAME_CONTAINER)
# -----------------------------------
# controller
export NONE_DOCKER_IMAGES=`docker images -f dangling=true -q`
export STOPPED_DOCKER_CONTAINERS=`docker ps -a -q`

.PHONY: clean
clean: ## clean images&containers
	-@make clean-images
	-@make clean-containers
clean-images:
	docker rmi $(NONE_DOCKER_IMAGES) -f
clean-containers:
	docker rm -f $(STOPPED_DOCKER_CONTAINERS)
# -----------------------------------
# help
h:	## this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'