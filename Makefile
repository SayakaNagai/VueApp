# コンテナ操作コマンド等
build:
	docker-compose build
macUp:
	docker-compose -f docker-compose.yml -f docker-compose.mac.yml up -d
windowsUp:
	docker-compose -f docker-compose.yml -f docker-compose.windows.yml up -d
down:
	docker-compose down
restart:
	docker-compose stop
	docker-compose start
clean:
	@docker image prune
	@docker volume prune
ps:
	@docker ps -a
sh:
	docker-compose exec nuxt bash
log:
	docker-compose logs nuxt
logf:
	docker-compose logs -f nuxt
test:
	docker-compose exec nuxt npm test