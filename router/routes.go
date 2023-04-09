package router

import (
	"net/http"

	"github.com/LeonardoHuelvas/goMeli.git/controllers"
	"github.com/labstack/echo"
)

func EchoRoutes(e *echo.Echo) {
	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hola al Servidor")
	})

	e.GET("/customer", controllers.GetCustomer)
	e.GET("/item", controllers.GetCustomer)
	// e.GET("/category", controllers.GetCategory)
	// e.GET("/order", controllers.GetOrder)

}
