class RemoveFeaturesFromSubcategories < ActiveRecord::Migration
  def change
  	remove_attachment :subcategories, :image
  	remove_column :subcategories, :description
  end
end
