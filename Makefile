SERVICE := app

start:
	./startup.sh $(SERVICE)
	docker-compose logs $(SERVICE)
stop:
	docker-compose stop $(SERVICE)
ssh:
	docker-compose exec $(SERVICE) bash
