.DEFAULT_GOAL := help

.PHONY: help
help:
	echo todo print help
	@echo @をつけると実行コマンドが表示されない
	@echo .PHONYをつけないと同名ファイルがあるときに実行されない

.PHONY: build-up
build-up:
	docker-compose up -d --build

.PHONY: up
up:
	docker-compose up -d

.PHONY: exec-bash
exec-bash:
	docker-compose exec pytest-console /bin/bash
