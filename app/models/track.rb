class Track < ActiveRecord::Base
  attr_accessible :album_id, :bonus, :duration, :lyrics, :name, :position

  belongs_to :album

  has_one :band, :through => :album
end
