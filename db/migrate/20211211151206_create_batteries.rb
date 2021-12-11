class CreateBatteries < ActiveRecord::Migration[6.1]
  def change
    create_table :batteries do |t|
      t.integer :Capacity
      t.string :Type
      t.string :Technology
      t.string :Charge      
    end
  end
end
