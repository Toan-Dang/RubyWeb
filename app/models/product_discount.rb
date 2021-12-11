class ProductDiscount < ApplicationRecord
    belongs_to :discount
	belongs_to :product
end
