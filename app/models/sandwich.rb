class Sandwich < ActiveRecord::Base
	belongs_to :user
	validates :kind, presence: true, inclusion: { in: %w(Meaty Vegetarian Vegan) }
end
