class AddWishlistIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :wishlist_id, :integer
  end
end
