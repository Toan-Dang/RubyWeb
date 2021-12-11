class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.belongs_to :categories , foreign_key: true
      t.string :CategoryName
      t.string :Description
      t.string :Active
      t.string :Picture
    end
  end
end
