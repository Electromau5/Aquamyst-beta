class AddGender2ToSubcategories < ActiveRecord::Migration
  def change
    add_column :subcategories, :gender2, :string
  end
end
