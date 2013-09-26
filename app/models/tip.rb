class Tip < ActiveRecord::Base
  attr_accessible :review, :venue_id

  belongs_to :venue
end
