class AddSizeToPolishState < ActiveRecord::Migration
  def change
    add_column :states, :size, :string
  end
end
