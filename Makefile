tailwind:
	./bin/tailwindcss -i ./public/css/input.css -o ./public/css/tw.css --minify

build:
	go build -o ./bin main.go

run:
	./bin/main

start:
	make -s tailwind build run	

docker-build:
	docker build --name website .

docker-run:
	docker run -p 3000:3000 website

docker-kill:
	docker kill website && docker image rm website 
