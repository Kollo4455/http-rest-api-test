.PHONY: build
build:
	go build -v ./cmd/apiserver

.PHONY: test
test:
	CGO_ENABLED=0 go test -ldflags "-s -w" -a -v ./...

.DEFAULT_GOAL := build