class Customer < ApplicationRecord
    belongs_to :User
	has_many :Order
end
