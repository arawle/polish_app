class AddUserIdToState < ActiveRecord::Migration
  def change
      add_column :states, :user_id, :integer
  end
end
