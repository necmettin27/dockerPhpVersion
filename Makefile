setup:
	@make php8
	@make php7
	@make up 
php8:
	docker-compose build php8 --no-cache --force-rm
php7:
	docker-compose build php7 --no-cache --force-rm
stop:
	docker-compose stop
up:
	docker-compose up -d  