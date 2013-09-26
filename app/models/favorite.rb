class Favorite < ActiveRecord::Base
  attr_accessible :venue_id, :user_id

  belongs_to :venue
  belongs_to :user 
end
