

venues = ["3fd66200f964a520ece91ee3", "406dfe80f964a52048f21ee3", "49ad6634f964a520b2521fe3", "4a048c32f964a5200a721fe3", "5096f9a5e4b0ad3a967b4237", "4a3d927df964a52075a21fe3", "4f860f7de4b0f18937861f61", "4c129fe91b5cef3befc9edc4", "4aa9386ef964a5208b5220e3", "45d066b1f964a520aa421fe3"]
  	
# ***SEED FOR VENUE INFO***

address = []

venues.each do |venue|
	client = Foursquare2::Client.new(:client_id => "RALB0H3NYUUPGDF501WRSNB55UWHTQKDLISKHJ5JC2WX3KBM", :client_secret => "JR4DPIZZ3LP1BZMI2AYZR3UWAYX2CXHF0PWA3Y24RDIRVNBW")
	each_venue = client.venue(venue)

	address.clear

	address << each_venue.location["address"]
	address << each_venue.location["city"]
	address << each_venue.location["state"]
	address << each_venue.location["postalCode"] 

	full_address = address.join(",")

	Venue.create(name: each_venue.name, address: full_address, venue_id: each_venue.id, here_now: each_venue.hereNow["count"], lat: each_venue.location["lat"], lng: each_venue.location["lng"], )

	end


# *** SEED FOR VENUE TIPS ***



venues.each do |venue| 
	client = Foursquare2::Client.new(:client_id => "RALB0H3NYUUPGDF501WRSNB55UWHTQKDLISKHJ5JC2WX3KBM", :client_secret => "JR4DPIZZ3LP1BZMI2AYZR3UWAYX2CXHF0PWA3Y24RDIRVNBW")
  	venue_tips = client.venue_tips(venue, options = {:limit => 9})
	
			(0..8).each do |x|
			if venue_tips.items[x]
				venue_table_first = Venue.where(:venue_id => venue)
				venue_table=venue_table_first.first 
				review = venue_tips.items[x].text
				Tip.create(:venue_id => venue_table.id, :review => review) 
			end
		end

	
end
