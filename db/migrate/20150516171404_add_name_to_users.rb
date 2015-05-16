class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :profileimage, :string
    add_column :users, :gender, :string
    add_column :users, :nationality, :string
  end
end
