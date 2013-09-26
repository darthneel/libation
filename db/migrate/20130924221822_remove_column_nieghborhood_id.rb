class RemoveColumnNieghborhoodId < ActiveRecord::Migration
  def up
  		remove_column :venues, :nieghborhood_id
  end

  def down
  end
end
