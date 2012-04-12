class Sandwich < ActiveRecord::Base
	belongs_to :user
	validates :kind, presence: true, inclusion: { in: %w(Meaty Vegetarian Vegan) }

	def order
		SandwichMailer.sandwich_mail(self).deliver
	end

	def random_quote
		Rumi.quote
	end
end
