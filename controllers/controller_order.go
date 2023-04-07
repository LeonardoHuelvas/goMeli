package controllers

import (
	"net/http"

	"ejemplo.com/m/common"
	"ejemplo.com/m/entity"
	"github.com/labstack/echo"
)

func GetOrder(c echo.Context) error {
	orderNombre := []entity.Order{}
	common.DB.Table("order").Find(&orderNombre)
	return c.JSON(http.StatusOK, orderNombre)
}
