class ListingSub < ActiveRecord::Base
	belongs_to :listing
	belongs_to :subcategory
end