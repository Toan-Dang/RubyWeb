class Discount < ApplicationRecord
    has_and_belongs_to_many :Product
	has_many :Gift
end
