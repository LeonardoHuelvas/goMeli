package entity

type Order struct {
	ID          int    `json:"id" gorm:"primary_key;auto_increment"`
	Title       string `json:"fecha"`
	Customer_id string `json:"customer_id"`
	// Condittion
	// Thumbnail_id
	// Catalog_product_id
	// Listing_type_id
	// Permalink
	// Buying_mode
	// Site_id
	// Category_id
	// Domain_id
	// Thumbnail
	// Currency_id
	// Order_backend
	// Price
	// Original_price
	// Sale_price
	// Sold_quantity
	// Available_quantity
	// Official_store_id
	// Accepts_mercadopag

}
