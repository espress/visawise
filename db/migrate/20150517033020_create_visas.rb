class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.string :country
      t.string :type
      t.string :price

      t.timestamps null: false
    end
  end
end
