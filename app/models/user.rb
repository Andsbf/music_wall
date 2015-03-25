class User < ActiveRecord::Base
  validates :username, uniqueness: true, presence: true
  validates :password, presence: true

  has_many :votes
  has_many :songs, through: :votes

  has_many :comments
  

end
