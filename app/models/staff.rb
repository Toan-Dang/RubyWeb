class Staff < ApplicationRecord
    belongs_to :user
	has_many :purchases
end
