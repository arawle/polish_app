class AddSwapAndSellToState < ActiveRecord::Migration
  def change
    add_column :states, :for_sale, :boolean
    add_column :states, :for_swap, :boolean
  end
end
