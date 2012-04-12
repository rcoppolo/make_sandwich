require 'open-uri'

class Sandwich < ActiveRecord::Base
	belongs_to :user
	validates :kind, presence: true, inclusion: { in: %w(Meaty Vegetarian Vegan) }

	after_create do |sandwich|
		sandwich.order
	end

	def order
		SandwichMailer.sandwich_mail(self).deliver
	end

	def quote
		Rumi.quote
	end

	def random_image
		@images ||= SimpleRSS.parse open("http://api.flickr.com/services/feeds/groups_pool.gne?id=19156041@N00&lang=en-us&format=rss_200")
		@images.items.sample.media_content_url
	end

end
