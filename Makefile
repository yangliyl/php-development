PATH=/Users/yangli/develop/php-development/code/phpRedisAdmin-1.11.0
VERSION=1.7.3

all: install update

install:
	@echo "Installing..."
	docker run --rm -v $(PATH):/app composer:$(VERSION) composer install

update:
	@echo "Updating..."
	docker run --rm -v $(PATH):/app composer:$(VERSION) composer update
