class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.belongs_to :Product , foreign_key: true
      t.string :URL
    end
  end
end
