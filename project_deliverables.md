***SCOPE***

	I am planning to build an app that shows what bars are the most popular in a given area.  Popularity will be based on the number of checkins at that moment, utilizing FourSquare's API.  I think in the given time period, I can arrange the bars by popularity and pin them on a map.  I would like to include user photos, but that may be beyond the scop and timeframe of this project.  

***PRODUCT BACKLOG***

	sort bars by popularity
	give or have a link to reviews
	show user photos
	allow users to check in
	place venues on map
	give directions to venue
	show if any of users friends are at venue 

***SPRINT BACKLOG***

	sort venues my popularity
	show reviews
	place venues on map

***RESOURCES***
		
	* Fouraquare API Documentation - https://developer.foursquare.com/
	* Yelp API Documentation - http://www.yelp.com/developers/documentation
	* Foursquare Rails Generator - https://github.com/pierrevalade/foursquare-rails-generators
	

_______________________

The concept of this app is to make it easy for people to decide which bar to go to.  By offering users a list of bars arranged by the number of people already checked in, they can quickly choose to go to a place with a good crowd.  This will also allow users to discover new places in areas they are unfamiliar with by quickly seeing what is popular on any given night.

To create this app, I plan to utilize two API's - Foursquare and Yelp.  I will be using Foursquare's checkins to determine the current popularity of a venue and Yelp to provide reviews. 

The gems I will likely require are -
 * Foursquare2
 * OAuth
 * HTTParty
 * JSON
 * Postgresql
 * Rspec
 * Pry




