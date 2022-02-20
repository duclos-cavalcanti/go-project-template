#!/bin/bash

# installing baz go package from foo/bar
if ! foo -v 2>/dev/null; then
    go get -v github.com/foo/bar/...
    go install github.com/foo/bar/baz
fi
