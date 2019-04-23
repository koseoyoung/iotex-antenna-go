# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_NAME=antenna
BINARY_UNIX=$(BINARY_NAME)_unix
	
all: test build
build:
	$(GOBUILD) -o $(BINARY_NAME) -v
fmt:
	$(GOCMD) fmt ./...
test:
	$(GOTEST) -v ./...
clean:
	$(GOCLEAN)
	rm -f $(BINARY_NAME)
	rm -f $(BINARY_UNIX)
install:
	dep ensure