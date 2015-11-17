class Polish < ActiveRecord::Base
  validates_presence_of :brand, :collection, :name, :finish, :color
  has_many :states

  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

end
