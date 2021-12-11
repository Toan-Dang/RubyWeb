class CreateInventProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :invent_products do |t|
      t.belongs_to :Inventory , foreign_key: true
      t.belongs_to :Product , foreign_key: true
      t.integer :ProductAvailable
    end
  end
end
