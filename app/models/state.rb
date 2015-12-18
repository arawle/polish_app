class State < ActiveRecord::Base
  validates_presence_of :swatched, :fill, :thinned

  has_attached_file :bottleshot
  validates_attachment_content_type :bottleshot, content_type: /\Aimage\/.*\Z/

  belongs_to :polish
  belongs_to :user

end
