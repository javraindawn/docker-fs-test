SHELL := /usr/bin/env bash

build:
	docker build -t javraindawn/docker-fs-test:latest .

test-1000:
	docker run --rm -e COUNT=1000 -v "$$PWD/app":/app javraindawn/docker-fs-test:latest

test-10000:
	docker run --rm -e COUNT=10000 -v "$$PWD/app":/app javraindawn/docker-fs-test:latest
