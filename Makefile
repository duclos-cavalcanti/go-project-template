SHELL := /bin/bash

FILE := $(lastword $(MAKEFILE_LIST))
DIR := "cmd/project"

GO ?= go
FMT ?= gofmt

SRC ?= $(shell find $(DIR) -name "*.go" -type f)
PROJECT := prj
FLAGS ?= -trimpath -mod=readonly -modcacherw
LDFLAGS ?=

all:

.PHONY: init
init:
	@echo "## Initializing Project ##"
	$(GO) mod init example/hello

.PHONY: build
build:
	@echo "## Building Project ##"
	$(GO) build $(FLAGS) -ldflags $(LDFLAGS) -o ${PROJECT}

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
	@echo "## Running Project ##"
	@pushd $(DIR); \
	pwd; \
	popd
