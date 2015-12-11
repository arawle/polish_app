class User < ActiveRecord::Base
  validates :username, presence: :true, length: {minimum: 2}
  validates :email, presence: :true

  has_many :collections, dependent: :destroy
  has_many :polishes, through: :collections

  has_many :states

  has_secure_password
end