class AddColumnLngToVenues < ActiveRecord::Migration
  def change
  	add_column :venues, :lng, :float
  end
end
