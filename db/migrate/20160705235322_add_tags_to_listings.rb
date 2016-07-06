class AddTagsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :tag, :string
  end
end
