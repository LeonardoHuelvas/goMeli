package main

import (
	"github.com/LeonardoHuelvas/goMeli.git/router"
	"github.com/labstack/echo"
)

func main() {
	e := echo.New()
	router.EchoRoutes(e)
	e.Logger.Fatal(e.Start(":8080"))
}
