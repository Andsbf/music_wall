class Song < ActiveRecord::Base
  validates :author, presence: true
  validates :title, presence: true

  belongs_to :user
end