package main

import (
	"fmt"
	"net/http"
)

func Index(rw http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(rw, "Hola Mundo")
}

func main() {
	http.HandleFunc("/", Index)

	//Crea Servidor
	fmt.Println("El servidor está corriendo en el puerto 3000")
	fmt.Println("Run server: http://localhost:3000")

	http.ListenAndServe("localhost:3000", nil)
}
