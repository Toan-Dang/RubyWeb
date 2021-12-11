class CreateProcessors < ActiveRecord::Migration[6.1]
  def change
    create_table :processors do |t|
      t.string :Name
      t.integer :Core
      t.integer :Thread
      t.float :BaseSpeed    
      t.float :MaxSpeed 
      t.float :Cache   

    end
  end
end
