class Customer < ActiveRecord::Base
	
	has_many :recommendations

	#Fucntion to create recommendation.
	def create_recommendation(recommendation_params, product_params)
		@product = Product.find_or_create_by(product_params)
		Recommendation.create(build_recommendation_params(recommendation_params))
	end

	#Function to build recommendation params
	def build_recommendation_params(recommendation_params)
		recommendation_params.merge({product_id: @product.id, customer_id: id})
	end
end
