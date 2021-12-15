class OrderDetail < ApplicationRecord
    belongs_to :Order
	belongs_to :Product
end
