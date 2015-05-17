class AddDobToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dob, :string
    add_column :users, :country, :string
  end
end
