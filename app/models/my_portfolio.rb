class MyPortfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

=begin 
	def self.angular
		where(subtitle: "Angular")
	end
=end
	scope :ruby_on_rails, -> {where(subtitle: "Ruby on Rails")}
	scope :angular, -> {where(subtitle: "Angular")}
end
