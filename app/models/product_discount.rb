class ProductDiscount < ApplicationRecord
    belongs_to :Discount
	belongs_to :Product
end
