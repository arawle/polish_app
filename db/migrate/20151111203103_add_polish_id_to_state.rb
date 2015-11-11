class AddPolishIdToState < ActiveRecord::Migration
  def change
    add_column :states, :polish_id, :integer
  end
end
