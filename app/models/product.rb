class Product < ActiveRecord::Base
  validates_presence_of :name, :price
  has_many :order_products
  has_many :orders, through: :order_products

  paginates_per 10
end
