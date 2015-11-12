class AddBuyerOptionsToState < ActiveRecord::Migration
  def change
    add_column :states, :obtained, :string
    add_column :states, :purchase_price, :string
  end
end
