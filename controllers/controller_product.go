package controllers

import (
	"net/http"

	"ejemplo.com/m/common"
	"ejemplo.com/m/entity"
	"github.com/labstack/echo"
)

func GetCustomer(c echo.Context) error {
	customerUser := []entity.Customer{}
	common.DB.Table("customer").Find(&customerUser)
	return c.JSON(http.StatusOK, customerUser)
}
