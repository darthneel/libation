class Venue < ActiveRecord::Base
  attr_accessible :name, :address, :venue_id, :here_now, :lat, :lng

  belongs_to :neighborhood
  has_many :tips
  has_many :favorites

end
