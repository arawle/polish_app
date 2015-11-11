class Polish < ActiveRecord::Base
  validates_presence_of :brand, :collection, :name, :finish, :color
  has_many :states
end
