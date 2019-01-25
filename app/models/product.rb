class Product < ApplicationRecord
	#belongs_to :user
	belongs_to :user, :optional => true
	#belongs_to :user, inverse_of: :dog did not work
	validates :name, uniqueness: { case_sensitive: false }
	
end
