.PHONY: build shell

DOCKER_IMAGE := smartprocure/elasticsearch

build:
	docker build -t "$(DOCKER_IMAGE)" .

shell: build
	docker run --rm -it --entrypoint /bin/sh $(DOCKER_IMAGE) -c bash
