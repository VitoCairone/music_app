class Album < ActiveRecord::Base
  attr_accessible :band_id, :name, :album_type, :year

  belongs_to :band

  has_many :tracks
end
