class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.belongs_to :Order , foreign_key: true
      t.belongs_to :Product , foreign_key: true
      t.integer :Quanlity
      t.string :Status
      t.float :Price
      t.string :IDSKU
      t.float :Discount
      t.float :Total
      t.boolean :Fullfilled
      t.string :Voucher
    end
  end
end
