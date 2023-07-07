# Make targets to build on osx and ubuntu.
# also a target to push to docker hub.

build-osx:
	docker build -t push-to-docker-hub-example --platform darwin/amd64 .

build-arm:
	docker build -t push-to-docker-hub-example --platform linux/arm64 .

build-ubuntu:
	docker build -t push-to-docker-hub-example --platform linux/amd64 .

push:
	docker tag push-to-docker-hub-example:latest iamashwin99/push-to-docker-hub-example:latest
	docker push docker.io/iamashwin99/push-to-docker-hub-example:latest