class AddSizeToStateAsDecimal < ActiveRecord::Migration
  def change
    add_column :states, :size, :decimal
  end
end
