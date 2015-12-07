class AddColumnsToStates < ActiveRecord::Migration
  def change
    add_column :states, :blog, :datetime
    add_column :states, :box, :datetime
    add_column :states, :original_owner, :datetime
    add_column :states, :for_sale, :datetime
    add_column :states, :for_swap, :datetime
  end
end
