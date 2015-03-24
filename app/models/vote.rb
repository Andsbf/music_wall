class Vote < ActiveRecord::Base
  validates :song_id, uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :song
end