class CreateOs < ActiveRecord::Migration[6.1]
  def change
    create_table :os do |t|
      t.string :Name
      t.string :Version
    end
  end
end
