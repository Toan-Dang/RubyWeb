class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.belongs_to :user , foreign_key: true
      t.datetime :created_at
      t.string :ShipAddress
      t.string :City
      t.string :State
      t.string :Latitude
      t.string :Longitude
      t.float :Paid
    end
  end
end
