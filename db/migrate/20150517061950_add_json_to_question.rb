class AddJsonToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :data, :json
  end
end
