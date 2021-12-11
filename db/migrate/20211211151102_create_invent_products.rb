class CreateInventProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :invent_products do |t|

      t.timestamps
    end
  end
end
