class AddConsumerIdToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :consumer_id, :integer
  end
end
