class AddGender3ToSubcategories < ActiveRecord::Migration
  def change
    add_column :subcategories, :gender3, :string
  end
end
