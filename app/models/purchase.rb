class Purchase < ApplicationRecord
    has_and_belongs_to_many :Products
	belongs_to :Staff
	belongs_to :Supplier
end
