class CreatePurchaseDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_details do |t|

      t.timestamps
    end
  end
end
