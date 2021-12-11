class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.belongs_to :Discount , foreign_key: true
      t.string :GiftName
      t.integer :GiftAvailable
      t.integer :GiftAmount
      t.string :GiftImage
    end
  end
end
