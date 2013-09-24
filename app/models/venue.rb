class Venue < ActiveRecord::Base
  attr_accessible :name, :address, :venue_id, :tips, :here_now

  belongs_to :neighborhood

end
