class AddPhotoFieldToPolish < ActiveRecord::Migration
  def change
    add_column :polishes, :photo, :string
  end
end
