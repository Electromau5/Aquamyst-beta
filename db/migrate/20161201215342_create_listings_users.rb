class CreateListingsUsers < ActiveRecord::Migration
  def change
    create_table :listings_users do |t|
      t.integer :user_id
      t.integer :listing_id
    end
  end
end
