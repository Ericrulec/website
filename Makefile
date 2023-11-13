start:
	./main

build:
	go build main.go

tailwind:
	./tailwindcss -i ./public/css/input.css -o ./public/css/tw.css --minify
