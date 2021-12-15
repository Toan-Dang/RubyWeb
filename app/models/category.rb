class Category < ApplicationRecord
    has_many :Category
	has_many :Product
end
