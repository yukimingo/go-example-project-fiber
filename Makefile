help:
	cat Makefile

upb:
	docker-compose up -d --build

up:
	docker-compose up -d

down:
	docker-compose down

bash:
	docker container exec -it project-name bash