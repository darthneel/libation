class VenuesController < ApplicationController

  before_filter :authenticate_user!

	def index
	end

	def main
		@venues = Venue.order("here_now DESC").limit(5)
	end 

	def maintips
		
		@venues = Venue.order("here_now DESC").limit(5)

		venue = Venue.find(params[:id])
		@tips = venue.tips

	end

	def test
		client = Foursquare2::Client.new(:client_id => "RALB0H3NYUUPGDF501WRSNB55UWHTQKDLISKHJ5JC2WX3KBM", :client_secret => "JR4DPIZZ3LP1BZMI2AYZR3UWAYX2CXHF0PWA3Y24RDIRVNBW")
		@venue= client.venue("4aa9386ef964a5208b5220e3")

	end

	def map
		@venues = Venue.order("here_now DESC").limit(5)

	end

	def scheduled_herenow
		venues = Venue.all
			venues.each do |venue|
			client = Foursquare2::Client.new(:client_id => "RALB0H3NYUUPGDF501WRSNB55UWHTQKDLISKHJ5JC2WX3KBM", :client_secret => "JR4DPIZZ3LP1BZMI2AYZR3UWAYX2CXHF0PWA3Y24RDIRVNBW")
			herenow = client.herenow(venue.venue_id)	
			venue.here_now = herenow.hereNow["count"]
			venue.save

		end	
	end
end

		
