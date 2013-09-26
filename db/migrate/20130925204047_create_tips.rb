class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
    	t.text :tip
    	t.integer :venue_id

      t.timestamps
    end
  end
end
