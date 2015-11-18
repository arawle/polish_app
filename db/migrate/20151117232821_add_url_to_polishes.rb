class AddUrlToPolishes < ActiveRecord::Migration
  def change
    add_column :polishes, :url, :string
  end
end
