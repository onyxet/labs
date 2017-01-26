#!/usr/bin/env bash
function composer() {
	echo "Запуск всех контейнеров"
	docker-compose up -d
	sleep 10
}
function containers() {
	echo "Build basic container with php 7.1 with UWSGI"
	cd $PWD/dockerfile
	docker build --rm -t 127.0.0.1:5002/root/php:7.1 .
	echo "Login to local repo"
	docker login -u username -p password 127.0.0.1:5002
	echo "Push"
	docker push 127.0.0.1:5002/root/php:7.1
}
function check() {
	if [ ! -f /bin/docker-compose ] && [ ! -f /usr/bin/docker-compose ] && [ ! -f /usr/local/bin/docker-compose ]; then
		echo "Не найден docker-compose в /bin или /usr/bin или /usr/local/bin/"
		exit 0
	else
		composer
	fi
}
check
sleep 5
containers