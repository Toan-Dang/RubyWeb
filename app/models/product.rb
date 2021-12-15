class Product < ApplicationRecord
    has_and_belongs_to_many :Order
	has_and_belongs_to_many :Inventory
	has_and_belongs_to_many :Purchase
	has_and_belongs_to_many :Discount
	has_and_belongs_to_many :Content
	has_one :Image
	has_many :Feedback
	belongs_to :Category
	belongs_to :Camera
	belongs_to :Processor
	belongs_to :Ram
	belongs_to :Rom
	belongs_to :Os
	belongs_to :Battery
	belongs_to :Graphic
	belongs_to :Connection
	belongs_to :Structure
	belongs_to :Screen
	belongs_to :Sound
end
