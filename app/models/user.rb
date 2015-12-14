class User < ActiveRecord::Base
  validates :username, presence: :true, uniqueness: true, length: {minimum: 2}
  validates :email, presence: :true, uniqueness: true

  has_many :collections, dependent: :destroy
  has_many :polishes, through: :collections

  has_many :states

  has_secure_password
  #test
end