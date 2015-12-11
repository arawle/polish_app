class User < ActiveRecord::Base
  validates :username, presence: :true, length: {minimum: 2}
  validates :email, presence: :true

  has_secure_password

  has_many :collections, dependent: :destroy
  has_many :polishes, through: :collections
end