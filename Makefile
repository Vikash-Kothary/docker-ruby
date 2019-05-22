# Makefile for Ruby Docker Image

.PHONY: build-ruby run-ruby
SHELL := /bin/bash

%: %-ruby
	@true

build-ruby:
	@cd image/ && \
	docker-compose build

run-ruby: build-ruby
	@cd examples/ && \
	docker-compose run ruby-alpine bash
