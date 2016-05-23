class AddDescriptionToSubcategories < ActiveRecord::Migration
  def change
    add_column :subcategories, :description, :text
  end
end
