class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.belongs_to :Supplier , foreign_key: true
      t.belongs_to :Staff , foreign_key: true
      t.datetime :PurchaseDay
      t.datetime :PaymentDate
      t.string :TransactStatus
      t.string :TransactionNo
      t.string :ResponeseCode
      t.string :SecureHash
      t.float :Paid
      t.datetime :DateReceive
    end
  end
end
