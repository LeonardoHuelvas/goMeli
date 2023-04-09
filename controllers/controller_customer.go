package controllers

import (
	"net/http"

	"github.com/LeonardoHuelvas/goMeli.git/common"
	"github.com/LeonardoHuelvas/goMeli.git/entity"
	"github.com/labstack/echo"
)

func GetCustomer(c echo.Context) error {
	customerNombre := []entity.Customer{}
	common.DB.Table("customer").Find(&customerNombre)
	return c.JSON(http.StatusOK, customerNombre)
}
