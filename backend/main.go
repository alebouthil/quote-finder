package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("api/hello", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "application/json")
		fmt.Fprintf(w, `{"message": "Hello from Go!"}`)
	})
	log.Println("Go backend is running on port 8080...")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
