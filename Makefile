.PHONY: build

build:
	sam build

# https://www.gaunt.dev/blog/2022/glibc-error-with-aws-sam-and-go/
build-HelloWorldFunction:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -C hello-world -o hello-world main.go
	mv hello-world/hello-world $(ARTIFACTS_DIR)