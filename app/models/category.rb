class Category < ActiveRecord::Base
	has_many :products
	validates_presence_of :name 

	# validates :name, presence: true 

end
