class Product < ActiveRecord::Base

	mount_uploader :cover, CoverUploader

	belongs_to :category

	validates_presence_of :category_id, :name, :price, :stock
	validates_numericality_of :price, greater_than: 1
	validates_numericality_of :stock, greater_than_or_equal_to: 0
end
