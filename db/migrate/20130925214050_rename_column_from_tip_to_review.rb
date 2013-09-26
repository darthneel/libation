class RenameColumnFromTipToReview < ActiveRecord::Migration
  def change
  	rename_column :tips, :tip, :review
  end
end
