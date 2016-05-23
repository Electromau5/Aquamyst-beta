class AddNewFeaturesToSubcateories < ActiveRecord::Migration
  def change
  	add_column :subcategories, :apparel, :boolean, default: false
  	add_column :subcategories, :accessory, :boolean, default: false
  	add_column :subcategories, :mobile, :boolean, default: false
  	add_column :subcategories, :laptop, :boolean, default: false
  	add_column :subcategories, :home, :boolean, default: false
  	add_column :subcategories, :other, :boolean, default: false
  end
end
