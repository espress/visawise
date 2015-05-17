class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.boolean :status
      t.date :timestamp
      t.boolean :scannedRequirement
      t.string :scannedImagePath

      t.timestamps null: false
    end
  end
end
