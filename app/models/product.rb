class Product < ActiveRecord::Base
  belongs_to :users
  has_one :supplier
end
