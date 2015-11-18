class AddAttachmentBottleshotToStates < ActiveRecord::Migration
  def self.up
    change_table :states do |t|
      t.attachment :bottleshot
    end
  end

  def self.down
    remove_attachment :states, :bottleshot
  end
end
