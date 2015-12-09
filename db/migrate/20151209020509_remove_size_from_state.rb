class RemoveSizeFromState < ActiveRecord::Migration
  def change
    remove_column :states, :size, :string
  end
end
