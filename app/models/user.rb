class User < ActiveRecord::Base
  validates :username, uniqueness: true, presence: true
  validates :password, presence: true
  
  has_many :songs
end