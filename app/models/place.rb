class Place < ApplicationRecord
	belongs_to :user
	geocoded_by :address
  	after_validation :geocode
  	
	validates :name, presence: true
	validates :address, presence: true
	validates :description, length: {minimum: 3}
end
