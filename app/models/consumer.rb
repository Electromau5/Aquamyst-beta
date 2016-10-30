class Consumer < ActiveRecord::Base
	validates :name, :location, presence: true
	has_and_belongs_to_many :listings
end