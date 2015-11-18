class State < ActiveRecord::Base
  validates_presence_of :swatched, :fill, :thinned
  validates_inclusion_of :box, :original_owner, in: [true, false]

  has_attached_file :bottleshot
  validates_attachment_content_type :bottleshot, content_type: /\Aimage\/.*\Z/

  belongs_to :polish
end
