class AddGender1ToSubcategories < ActiveRecord::Migration
  def change
    add_column :subcategories, :gender1, :string
  end
end
