SHELL := /bin/bash

PROJECT := project
MODULE := github.com/duclos-cavalcanti/go-project-template

GO ?= go
FMT ?= gofmt
DIR := cmd

SRC ?= $(shell find $(DIR) -name "*.go" -type f)
FLAGS ?=
LDFLAGS ?=


all:

.PHONY: init
init:
	$(GO) mod init $(MODULE)

.PHONY: build
build:
	$(GO) build -v -o $(PROJECT) $(FLAGS) cmd/*.go

.PHONY: fmt
fmt:
	$(FMT) -w $(SRC)

.PHONY: tidy
tidy:
	$(GO) mod tidy

.PHONY: run
run: build
	@./$(PROJECT)

.PHONY: clean
clean:
	@echo "## Cleaning Project ##"
	$(GO) clean -modcache
