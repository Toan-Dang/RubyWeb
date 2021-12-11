class CreateProductContents < ActiveRecord::Migration[6.1]
  def change
    create_table :product_contents do |t|

      t.timestamps
    end
  end
end
