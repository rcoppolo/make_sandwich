class Sandwich < ActiveRecord::Base
	validates :kind, presence: true, inclusion: { in: %w(Meaty Vegetarian Vegan) }
end
