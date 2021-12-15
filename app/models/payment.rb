class Payment < ApplicationRecord
    has_many :Order
end
