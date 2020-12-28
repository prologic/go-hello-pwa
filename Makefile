.PHONY: build run

all: dev

dev: build
	@./go-hello-pwa

build:
	@GOARCH=wasm GOOS=js go build -o web/app.wasm
	@go build
