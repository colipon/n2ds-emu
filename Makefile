# Makefile for Go Development

# Variables
GO_CMD = go

# Targets

default: build

# Build the project
build:
	$(GO_CMD) build ./...

# Run tests
test:
	$(GO_CMD) test ./...

# Run linter
lint:
	$(GO_CMD) vet ./...
	golangci-lint run

# Format the code
fmt:
	$(GO_CMD) fmt ./...

# Run go vet
vet:
	$(GO_CMD) vet ./...

# Clean up build artifacts
clean:
	$(GO_CMD) clean

# Install tools
install-tools:
	go get golang.org/x/tools/cmd/goimports
	go get github.com/golangci/golangci-lint/cmd/golangci-lint