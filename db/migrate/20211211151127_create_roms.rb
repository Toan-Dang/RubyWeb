class CreateRoms < ActiveRecord::Migration[6.1]
  def change
    create_table :roms do |t|
      t.integer :Capacity  
      t.integer :MaxRom      
      t.string :Type
    end
  end
end
