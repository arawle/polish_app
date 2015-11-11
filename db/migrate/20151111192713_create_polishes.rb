class CreatePolishes < ActiveRecord::Migration
  def change
    create_table :polishes do |t|
      t.string :brand
      t.string :collection
      t.integer :releaseYear
      t.string :name
      t.string :code
      t.string :finish
      t.string :color

      t.timestamps null: false
    end
  end
end
