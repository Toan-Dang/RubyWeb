class CreateStructures < ActiveRecord::Migration[6.1]
  def change
    create_table :structures do |t|
      t.float :Wide
      t.float :Weight
      t.float :High
      t.float :Long
      t.string :Martirial
      t.string :Design       
    end
  end
end
