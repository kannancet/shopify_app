class RecommendationMailer < ApplicationMailer

	default from: '"MicroApps" <support@airmelive.in>'

  def notify_friend(recommendation, customer, product)
  	@customer = customer
  	@product  = product
  	@recommendation = recommendation
  	
    mail(to: @recommendation.recipient_email, subject: "#{@customer.name} recommends a product for you.")
  end
 
end
