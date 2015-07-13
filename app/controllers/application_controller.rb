class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :ensure_recommend_form


  #Function to ensure recommend form
  def ensure_recommend_form
  	@recommend_form = RecommendationForm.first_or_create
  end
end
