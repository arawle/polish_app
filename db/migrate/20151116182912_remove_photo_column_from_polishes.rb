class RemovePhotoColumnFromPolishes < ActiveRecord::Migration
  def change
    remove_column :polishes, :photo, :string
  end
end
