class State < ActiveRecord::Base
  validates_presence_of :swatched, :fill, :thinned
  validates_inclusion_of :box, :original_owner, in: [true, false]
  belongs_to :polish
end
