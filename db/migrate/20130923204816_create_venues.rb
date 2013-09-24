class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
    	t.string :name
    	t.string :address
    	t.string :venue_id
    	t.text :tips
    	t.integer :here_now

      t.integer :nieghborhood_id

      t.timestamps
    end
  end
end

