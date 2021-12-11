class CreateProductContents < ActiveRecord::Migration[6.1]
  def change
    create_table :product_contents do |t|
      t.belongs_to :Product , foreign_key: true
      t.belongs_to :Content , foreign_key: true

    end
  end
end
