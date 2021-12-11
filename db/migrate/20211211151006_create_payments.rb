class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :PaymentType
      t.boolean :Allowed
      
      
    end
  end
end
