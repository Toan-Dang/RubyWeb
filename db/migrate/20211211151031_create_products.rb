class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.belongs_to :Camera , foreign_key: true
      t.belongs_to :Ram, foreign_key: true
      t.belongs_to :Rom, foreign_key: true
      t.belongs_to :OS, foreign_key: true
      t.belongs_to :Processor, foreign_key: true
      t.belongs_to :Battery, foreign_key: true
      t.belongs_to :Graphic, foreign_key: true
      t.belongs_to :Connection, foreign_key: true
      t.belongs_to :Structure, foreign_key: true
      t.belongs_to :Screen, foreign_key: true
      t.belongs_to :Sound, foreign_key: true
      t.belongs_to :Category, foreign_key: true
      t.string :Product_name
      t.float :UnitPrice
      t.integer :View
      t.string :Picture
      t.float :Raw_price
      t.string :ProductDetail
      t.float :MSRP
      t.string :Version
      t.string :Color
      t.integer :UnitInOrder
      t.integer :ReorderLevel
      t.integer :CurrentOrder
      t.string :Note
      t.string :Special
      t.boolean :IsDelete
    end
  end
end
