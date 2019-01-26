class Product < ApplicationRecord
	#belongs_to :user
	belongs_to :user, :optional => true
	
	validates :name, uniqueness: { case_sensitive: false }
	
end
