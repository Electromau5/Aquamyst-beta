class AddAttachmentImageToSubcategories < ActiveRecord::Migration
  def self.up
    change_table :subcategories do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :subcategories, :image
  end
end
