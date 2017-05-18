default: init

init:
	docker-compose up

start:
	docker-compose start

stop:
	docker-compose stop

clean:
	docker-compose rm
