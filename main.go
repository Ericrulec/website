package main

import (
	"html/template"
	"log"
	"net/http"
)

const (
    PORT = "3000"
)

func main() {
	mux := http.NewServeMux()

	mux.Handle("/public/", http.FileServer(http.Dir(".")))

	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		if r.Method == http.MethodGet {
			tmpl := template.Must(template.ParseFiles("./index.html"))

			if err := tmpl.Execute(w, nil); err != nil {
				// handle error
			}
			return
		}
		w.WriteHeader(http.StatusMethodNotAllowed)
	})

    log.Println("Server started, listening on port:"+PORT+"...")
	log.Fatal(http.ListenAndServe(":"+PORT, mux))
}
