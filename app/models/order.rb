class Order < ApplicationRecord
    belongs_to :Customer
	belongs_to :Payment
	has_and_belongs_to_many :Product
end
