class Product < ApplicationRecord
    has_and_belongs_to_many :orders
	has_and_belongs_to_many :inventories
	has_and_belongs_to_many :purchases
	has_and_belongs_to_many :discounts
	has_and_belongs_to_many :contents
	has_one :image
	has_one :feedback
	belongs_to :category
	belongs_to :camera
	belongs_to :processor
	belongs_to :ram
	belongs_to :rom
	belongs_to :os
	belongs_to :battery
	belongs_to :graphic
	belongs_to :connection
	belongs_to :structure
	belongs_to :screen
	belongs_to :sound
end
