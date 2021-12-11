class CreateBatteries < ActiveRecord::Migration[6.1]
  def change
    create_table :batteries do |t|

      t.timestamps
    end
  end
end
