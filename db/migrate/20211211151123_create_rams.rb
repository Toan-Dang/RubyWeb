class CreateRams < ActiveRecord::Migration[6.1]
  def change
    create_table :rams do |t|
        t.string :Name
        t.float  :Capacity
        t.float  :MaxRam
        t.float :Speed
        t.string :Type
        t.integer :Slots
    end
  end
end
