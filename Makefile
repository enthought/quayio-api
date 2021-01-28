# Example usage:
# make all

SHELL:=/bin/bash
# look for whoami file, to pass user name across environments
WHOAMI_FILE=.whoami
ifneq ("$(wildcard $(WHOAMI_FILE))","")
include $(WHOAMI_FILE)
else
WHOAMI ?= $(shell whoami)
endif

EPOCH=date "+%s"
OS := $(if $(OS),$(OS),$(shell uname -s))
ifeq ($(OS),Darwin)
DATE_READ:=date -r $(shell $(EPOCH))
else
DATE_READ:=date -d @$(shell $(EPOCH))
endif

DEBUG:=0
GOBUILD:=go build
ifeq ($(DEBUG),1)
GOBUILD:=go build -v -work -x -a
endif
GOOS:=$(if $(GOOS),$(GOOS),linux/amd64)
GOCGO:=0
GOCLEAN:=go clean
GOGET:=go get
GOINSTALL:=go install
GOTEST:=go test
GOVET:=go vet
GOTOOL:=go tool

# extract from the git repo
NAME ?= $(shell basename $(PWD) | cut -f1 -d"@" | tr '[:upper:]' '[:lower:]')
AUTHOR :=$(shell git show --format="%an <%ae>" | head -1 | tr -d \'\")
CHANGE :=$(shell git show --format="%s" | head -1 | tr -d \'\")
ISSUE_NAME :=$(shell git log -1 --pretty="%B" | head -1 | tr -d \'\")
NOW := $(shell $(DATE_READ) "+%Y%m%d-%H%M%S")
SHA := $(shell git rev-parse --short HEAD)
VERSION := $(NOW)
TAG := $(NAME)-$(BRANCH_NAME)-$(NOW)-$(SHA)
GIT_USER_ID := sysbot

CONTAINER ?= openapitools/openapi-generator-cli
DOCKER_RUN_FLAGS :=--rm -v $$(dirname $$(pwd)):/work -w /work/$(NAME) $(CONTAINER)

## build inside container and install
all: gen gofmt

## run golang code fmt except for generated code and vendor
gofmt: ; @go fmt $$(go list ./... | grep -v /vendor/ )

## start container and generate code inside container
gen:
	docker run $(DOCKER_RUN_FLAGS) generate \
		--package-name client \
		--git-repo-id $(NAME) \
		--git-user-id $(GIT_USER_ID) \
		--skip-validate-spec \
		-i "https://quay.io/api/v1/discovery" \
		-g go \
		-o ./

## go vet the entire repo, skip checking for printf related errors
vet: ; $(GOVET) -v -printf=false ./...

GREEN	 := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE	 := $(shell tput -Txterm setaf 7)
RESET	 := $(shell tput -Txterm sgr0)

TARGET_MAX_CHAR_NUM=20
## Show this help
help:
	@echo ''
	@echo 'Usage:'
	@echo '	 ${YELLOW}make${RESET} ${GREEN}<target>${RESET}'
	@echo ''
	@echo 'Targets:'
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "	${YELLOW}%-$(TARGET_MAX_CHAR_NUM)s${RESET} ${GREEN}%s${RESET}\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)

.PHONY: help
