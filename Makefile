tailwind:
	./bin/tailwindcss -i ./public/css/input.css -o ./public/css/tw.css --minify

build:
	go build -o ./bin main.go

run:
	./bin/main

start:
	make -s tailwind build run	

