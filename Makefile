## ----------------------------------------------------------
## Docker
## ----------------------------------------------------------
.PHONY: docker/start docker/stop docker/down docker/down-all docker/build

docker/build:
	docker-compose stop
	docker-compose rm -f
	docker-compose build --pull --no-cache

docker/start:
	docker-compose up -d --build --remove-orphans

docker/stop:
	docker-compose stop

docker/down:
	docker-compose down

docker/down-all:
	docker-compose down --rmi all -v

restart:
	make docker/stop
	make docker/start