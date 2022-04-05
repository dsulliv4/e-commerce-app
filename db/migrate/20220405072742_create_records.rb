class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :artist
      t.string :genre
      t.string :description
      t.string :text
      t.string :condition
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
