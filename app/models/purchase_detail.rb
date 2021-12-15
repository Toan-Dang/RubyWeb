class PurchaseDetail < ApplicationRecord
    belongs_to :Purchase
	belongs_to :Product
end
