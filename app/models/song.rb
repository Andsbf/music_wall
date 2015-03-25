class Song < ActiveRecord::Base
  validates :author, presence: true
  validates :title, presence: true
  

  has_many :votes
  has_many :users, through: :votes

  has_many :comments
end