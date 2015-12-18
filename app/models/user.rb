class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :states, dependent: :destroy

  has_many :collections, dependent: :destroy
  has_many :polishes, through: :collections
end
