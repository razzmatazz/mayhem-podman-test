.PHONY: build
build:
	podman build -t docker.io/sauliusfas/sm-podman-crash-test .

.PHONY: push
push:
	podman push docker.io/sauliusfas/sm-podman-crash-test:latest

.PHONY: run
run:
	podman run -it --rm docker.io/sauliusfas/sm-podman-crash-test

.PHONY: build-amd64
build-amd64:
	podman build --platform=linux/amd64 -t docker.io/sauliusfas/sm-podman-crash-test-amd64 .

.PHONY: push-amd64
push-amd64:
	podman push docker.io/sauliusfas/sm-podman-crash-test-amd64:latest

.PHONY: run-amd64
run-amd64:
	podman run -it --rm --platform=linux/amd64 docker.io/sauliusfas/sm-podman-crash-test-amd64
