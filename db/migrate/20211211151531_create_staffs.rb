class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.belongs_to :user , foreign_key: true
      t.string :UserId
      t.datetime :WorkingDay
    end
  end
end
