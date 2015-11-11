class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :condition
      t.string :swatched
      t.boolean :blog
      t.string :fill
      t.string :thinned
      t.boolean :box
      t.string :notes
      t.string :bottle_shot
      t.string :mani_shot
      t.boolean :original_owner

      t.timestamps null: false
    end
  end
end
