class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :CompanyName 
      t.string :ContactName
      t.string :Adress  
      t.string :Phone   
      t.string :Email
      t.string :TypeGoods
      t.string :Notes
    end
  end
end
