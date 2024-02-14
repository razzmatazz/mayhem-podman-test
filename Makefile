.PHONY: build
build:
	podman build --platform linux/amd64 -t sm-podman-crash-test .

.PHONY: run
	podman run --platform linux/amd64 -it --rm sm-podman-crash-test
