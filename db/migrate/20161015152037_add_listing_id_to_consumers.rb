class AddListingIdToConsumers < ActiveRecord::Migration
  def change
  	add_column :consumers, :listing_id, :integer
  end
end
