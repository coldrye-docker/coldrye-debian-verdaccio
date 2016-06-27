# vim: noexpandtab:ts=4:sw=4

provider = coldrye
os = debian
release = testing
feature = sinopia
feature_version = 1-4-x
tag := $(shell date +"%Y%m%d%H%M%S")
image = $(os)-$(feature)

.PHONY: build fetch-latest push

build: fetch-latest
	tar -czh . | docker build -t $(provider)/$(image)\:$(feature_version)-$(release)-$(tag) -
	docker tag $(provider)/$(image)\:$(feature_version)-$(release)-$(tag) $(provider)/$(image)\:$(feature_version)-$(release)-latest

fetch-latest:
	docker pull $(provider)/$(image):$(feature_version)-$(release)-latest || true

push: build
	docker push $(provider)/$(image)\:$(feature_version)-$(release)-$(tag)
	docker push $(provider)/$(image)\:$(feature_version)-$(release)-latest

