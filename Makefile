SHELL := /bin/bash

DIR := "cmd/project"
GO ?= go
FMT ?= gofmt

SRC ?= $(shell find $(DIR) -name "*.go" -type f)
FLAGS ?= -trimpath -mod=readonly -modcacherw
LDFLAGS ?=

PROJECT := github.com/duclos-cavalcanti/go-project-template

all:

.PHONY: init
init:
	@echo "## Initializing Project ##"
	$(GO) mod init $(PROJECT)

.PHONY: build
build:
	@echo "## Building Project ##"
	$(GO) build $(FLAGS) -ldflags $(LDFLAGS) -o prj

.PHONY: fmt
fmt:
	@echo "## Formatting Project ##"
	$(FMT) -w $(SRC)

.PHONY: tidy
tidy:
	@echo "## Running Project ##"
	$(GO) mod tidy

.PHONY: run
run:
	@cd $(DIR) && \
		$(GO) run .

.PHONY: clean
clean:
	@echo "## Cleaning Project ##"
	$(GO) clean -modcache
