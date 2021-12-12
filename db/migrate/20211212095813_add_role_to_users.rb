class AddRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :integer
    add_column :users, :username , :string
    add_column :users, :FullName , :string
    add_column :users, :Address , :string
    add_column :users, :Birthday , :datetime
    
  end
end
