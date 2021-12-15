class Content < ApplicationRecord
    has_and_belongs_to_many :Product
end
