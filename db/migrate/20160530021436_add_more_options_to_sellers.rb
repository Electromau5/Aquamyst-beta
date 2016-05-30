class AddMoreOptionsToSellers < ActiveRecord::Migration
  def change
    add_column :sellers, :description, :text
    add_column :sellers, :location, :string
    add_column :sellers, :social1, :string
    add_column :sellers, :social2, :string
    add_column :sellers, :social3, :string
    add_column :sellers, :social4, :string
  end
end
