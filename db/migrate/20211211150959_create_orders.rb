class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :Customer , foreign_key: true
      t.belongs_to :Payment , foreign_key: true
      t.datetime :OrderDay
      t.float :Freight
      t.datetime :ShipDate
      t.float :VoucherMoney
      t.string :Errlog
      t.string :Errmsg
      t.float :Paid
      t.datetime :PaymentDate
      t.string :TransactStatus
      t.string :TransactionNo
      t.string :ResponseCode
      t.string :SecureHash
      t.string :Voucher
      t.integer :InventoryId

      
    end
  end
end
