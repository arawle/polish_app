class AddAttachmentPictureToPolishes < ActiveRecord::Migration
  def self.up
    change_table :polishes do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :polishes, :picture
  end
end
