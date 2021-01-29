class AddSexToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sex, :string
    add_column :users, :description, :text
  end
end
