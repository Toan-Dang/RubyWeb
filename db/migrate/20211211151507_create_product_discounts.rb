class CreateProductDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :product_discounts do |t|
      t.belongs_to :Discount , foreign_key: true
      t.belongs_to :Product , foreign_key: true
    end
  end
end
