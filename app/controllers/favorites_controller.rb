class FavoritesController < ApplicationController

	def new
		venue_id = params[:id]

		Favorite.create(venue_id: venue_id, user_id: current_user.id)

		redirect_to :controller => :venues, :action => 'maintips', :id => venue_id 	
	end
	
	def delete
		venue_id = params[:id]

		favorite_one = Favorite.where(venue_id: venue_id)
		favorite = favorite_one.where(user_id: current_user.id)
 		
		current_user.favorites.delete(favorite)

		redirect_to :controller => :venues, :action => 'maintips', :id => venue_id 	

	end


end
