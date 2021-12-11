class CreateRoms < ActiveRecord::Migration[6.1]
  def change
    create_table :roms do |t|

      t.timestamps
    end
  end
end
