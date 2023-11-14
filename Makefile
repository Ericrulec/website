tailwind:
	./tailwindcss -i ./public/css/input.css -o ./public/css/tw.css --minify

build:
	go build main.go

run:
	./main

start:
	make tailwind build run	

