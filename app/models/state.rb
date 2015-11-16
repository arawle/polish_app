class State < ActiveRecord::Base
  validates_presence_of :condition, :swatched, :fill, :thinned, :box, :original_owner
  belongs_to :polish

end
