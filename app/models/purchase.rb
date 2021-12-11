class Purchase < ApplicationRecord
    has_and_belongs_to_many :products
	belongs_to :staff
	belongs_to :supplier
end
