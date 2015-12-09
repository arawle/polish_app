class ChangeStateDatetimeColumnNames < ActiveRecord::Migration
  def change
    rename_column :states, :blog, :blog_at
    rename_column :states, :box, :box_at
    rename_column :states, :original_owner, :original_owner_at
    rename_column :states, :for_sale, :for_sale_at
    rename_column :states, :for_swap, :for_swap_at
  end
end
