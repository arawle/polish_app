class RemoveStateIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :state_id, :integer
  end
end
