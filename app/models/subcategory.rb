class Subcategory < ActiveRecord::Base
	belongs_to :category
	has_many :listings
	has_attached_file :image, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["200x200>", :jpg, :quality => 70],  large:  
  	                ['1000>', :jpg, :quality => 70] }                           
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

