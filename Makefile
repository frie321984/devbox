default: build

build: 
	buildah build -t devbox:beta

.PHONY: build 
