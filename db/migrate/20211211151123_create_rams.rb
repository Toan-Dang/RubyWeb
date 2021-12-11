class CreateRams < ActiveRecord::Migration[6.1]
  def change
    create_table :rams do |t|

      t.timestamps
    end
  end
end
