class CreateScreens < ActiveRecord::Migration[6.1]
  def change
    create_table :screens do |t|
   t.string :Resolution
   t.string :Size
   t.string :HZ
   t.string :MaxBright
   t.string :Specical
   t.string :Technology
    end
  end
end
