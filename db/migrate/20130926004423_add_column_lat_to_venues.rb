class AddColumnLatToVenues < ActiveRecord::Migration
  def change
  	add_column :venues, :lat, :float
  end
end
