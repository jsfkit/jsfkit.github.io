.PHONY: build
build:
	@docker build -t jsfkit.github.io:latest .

.PHONY: serve
serve: build
	@docker run \
	    --rm \
		--init \
		--publish 8000:8000 \
		--mount "type=bind,source=$(CURDIR),target=/project" \
		jsfkit.github.io:latest
