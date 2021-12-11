class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :Title
      t.string :Content
      t.datetime :DayRealse
      t.string :Author
      t.string :Special
    end
  end
end
