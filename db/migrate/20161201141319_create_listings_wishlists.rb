class CreateListingsWishlists < ActiveRecord::Migration
  def change
    create_table :listings_wishlists do |t|
      t.integer :wishlist_id
      t.integer :listing_id
    end
  end
end
