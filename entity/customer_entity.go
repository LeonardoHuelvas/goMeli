package entity

import "time"

type Customer struct {
	ID        int    `json:"id" gorm:"primary_key;auto_increment"`
	Email     string `json:"email"`
	Nombre    string `json:"nombre"`
	Apellido  string `json:"apellido"`
	Sexo      string `json:"sexo"`
	Direccion string `json:"direccion" `
	Fecha     time.Time
	Telefono  string `json:"telefono"`
}
