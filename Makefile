.PHONY: build
build:
	podman build -t docker.io/sauliusfas/sm-podman-crash-test .

.PHONY: push
push:
	podman push docker.io/sauliusfas/sm-podman-crash-test:latest

.PHONY: run
run:
	podman run -it --rm docker.io/sauliusfas/sm-podman-crash-test
