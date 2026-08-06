.PHONY: up down build logs ps restart clean pull config images

up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

logs:
	docker compose logs -f

ps:
	docker compose ps

restart:
	docker compose restart

clean:
	docker compose down -v --remove-orphans

pull:
	docker compose pull

config:
	docker compose config

images:
	docker images