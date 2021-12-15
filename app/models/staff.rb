class Staff < ApplicationRecord
    belongs_to :User
	has_many :Purchase
end
