class Recommendation < ActiveRecord::Base

	belongs_to :customer
	belongs_to :product

	after_create :notify_recipient

	#Function to notify recipient
	def notify_recipient
		RecommendationMailer.notify_friend(self, customer, product).deliver
	end
end
