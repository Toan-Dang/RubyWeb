class Addtable < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details , id: false do |t|
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
    create_table :invent_products , id: false do |t|
      t.belongs_to :Inventory , foreign_key: true
      t.belongs_to :Product , foreign_key: true
      t.integer :ProductAvailable
    end
    create_table :product_contents , id: false do |t|
      t.belongs_to :Product , foreign_key: true
      t.belongs_to :Content , foreign_key: true

    end
    create_table :purchase_details , id: false do |t|
      t.belongs_to :Purchase , foreign_key: true
      t.belongs_to :Product , foreign_key: true
      t.integer :Quantity
      t.string :Status
      t.float :Price
      t.string :IDSKU
      t.float :Total
    end

    create_table :product_discounts , id: false do |t|
      t.belongs_to :Discount , foreign_key: true
      t.belongs_to :Product , foreign_key: true
    end
  end
end
