package controllers

import (
	"net/http"

	"ejemplo.com/m/common"
	"ejemplo.com/m/entity"
	"github.com/labstack/echo/v4"
)

func GetProductos(c echo.Context) error {
	productosNomb := []entity.Productos{}
	common.DB.Table("item").Find(&productosNomb)
	return c.JSON(http.StatusOK, productosNomb)
}
