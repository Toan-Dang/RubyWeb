class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :Condition     
      t.datetime :DateRealse
      t.datetime :DateEnd
      t.string :Title
      t.string :Detail
      t.float :DiscountMoney
      t.integer :DiscountAvailable
    end
  end
end
