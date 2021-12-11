class CreatePurchaseDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_details do |t|
      t.belongs_to :Purchase , foreign_key: true
      t.belongs_to :Product , foreign_key: true
      t.integer :Quantity
      t.string :Status
      t.float :Price
      t.string :IDSKU
      t.float :Total
    end
  end
end
