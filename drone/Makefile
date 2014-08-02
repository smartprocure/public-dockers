.PHONY: build shell

DOCKER_IMAGE := smartprocure/drone

build:
	docker build -t "$(DOCKER_IMAGE)" .

shell: build
	docker run --rm -it $(DOCKER_IMAGE) bash
