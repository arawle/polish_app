class Polish < ActiveRecord::Base
  validates_presence_of :brand, :collection, :name, :finish, :color
end
