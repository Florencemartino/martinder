class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :age, :integer
    add_column :users, :sex_preference, :string
    add_column :users, :photos, :string, array: true, default: []
  end
end
