class Comment < ActiveRecord::Base
  validates :user_id, :song, :comment, presence: true
  validates :song_id, uniqueness: { scope: :user_id }
  
  belongs_to :user
  belongs_to :song
end
