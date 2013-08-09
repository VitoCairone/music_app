class Note < ActiveRecord::Base
  attr_accessible :text, :track_id, :user_id

  belongs_to :user

  belongs_to :track
end
