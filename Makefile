REGISTRY_URL = https://index.docker.io/v1/
DH_USERNAME = ib110
DOCKER_REPO_DEV = ib110/store-dev
DOCKER_DIRECTORY = docker

dh-login:
	cat dh-access-token | docker login --username "$(DH_USERNAME)" --password-stdin

build-dev:
	docker build -f $(DOCKER_DIRECTORY)/dev/Dockerfile -t $(DOCKER_REPO_DEV):latest .

push-dev: dh-login
	docker push $(DOCKER_REPO_DEV):latest
