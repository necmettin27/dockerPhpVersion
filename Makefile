setup:
	@make build
	@make up 
build:
	docker-compose build myportalbackend --no-cache --force-rm
stop:
	docker-compose stop
up:
	docker-compose up -d  