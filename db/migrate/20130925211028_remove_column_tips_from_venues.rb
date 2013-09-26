class RemoveColumnTipsFromVenues < ActiveRecord::Migration
  def up
  	remove_column :venues, :tips
  end

  def down
  end
end
