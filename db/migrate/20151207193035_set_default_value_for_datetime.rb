class SetDefaultValueForDatetime < ActiveRecord::Migration
  def change
    change_column_default :states, :blog, nil
    change_column_default :states, :box, nil
    change_column_default :states, :original_owner, nil
    change_column_default :states, :for_sale, nil
    change_column_default :states, :for_swap, nil
  end
end
