class DropBooleans < ActiveRecord::Migration
  def change
    remove_column :states, :blog, :boolean
    remove_column :states, :box, :boolean
    remove_column :states, :original_owner, :boolean
    remove_column :states, :for_sale, :boolean
    remove_column :states, :for_swap, :boolean
  end
end
