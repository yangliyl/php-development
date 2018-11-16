PATH=0
VERSION=1.7.3

install:
ifeq ($(PATH),0)
	@echo "Run 'make install PATH=\"/path\" [VERSION=1.7.3]'"
else
	@echo "Installing..."
	docker run --rm -v $(PATH):/app composer:$(VERSION) composer install
endif

update:
ifeq ($(PATH),0)
	@echo "Run 'make update PATH=\"/path\" [VERSION=1.7.3]'"
else
	@echo "Updating..."
	docker run --rm -v $(PATH):/app composer:$(VERSION) composer update
endif
