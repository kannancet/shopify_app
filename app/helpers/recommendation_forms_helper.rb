module RecommendationFormsHelper

	def render_active_tab
	  path = request.fullpath

	  if path.include?("send_emails")
	  	{tab1: '', tab2: 'active', tab3: ''}
	  elsif path.include?("customer_profiles")
	  	{tab1: '', tab2: '', tab3: 'active'}
	  elsif path.include?("recommendation_forms")
	  	{tab1: 'active', tab2: '', tab3: ''}
	  end
	end
end
