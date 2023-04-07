package entity

type GetOrderItem struct {
	Order_ID int    `json:"order_id" gorm:"primary_key;auto_increment"`
	Item_id  string `json:"item_id"`
	Cantidad string `json:"cantidad"`
}
