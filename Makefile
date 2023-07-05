.PHONY: build

build:
	sam build

build-HelloWorldFunction:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -C hello-world -o hello-world main.go
	mv hello-world/hello-world $(ARTIFACTS_DIR)