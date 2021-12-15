class InventProduct < ApplicationRecord
    belongs_to :Inventory
	belongs_to :Product
end
