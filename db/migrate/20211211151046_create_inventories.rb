class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.integer :TotalAmount
      t.string :Name
      t.string :Adress
      t.string :City
      t.string :State
      t.string :Latitude
      t.string :Longitude
      t.boolean :IsActive
      
    end
  end
end
