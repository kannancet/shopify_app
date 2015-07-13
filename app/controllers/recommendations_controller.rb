class RecommendationsController < ApplicationController
  layout 'embedded_app'
  before_filter :set_headers, only: :create

  #Function to create a recommendation.
  def create
  	@customer = Customer.find_or_create_by(customer_params)
  	@customer.create_recommendation(recommendation_params, product_params)

    render json: "Successfully send"
  end

  #Function to show customer profiles
  def customer_profiles
    @customers = Customer.includes(recommendations: :product).page(params[:page]).per(20)
  end

  #Function to show send emails
  def send_emails
    @recommendations = Recommendation.includes(:product, :customer).page(params[:page]).per(20)
  end

  private
  #Function to build params for recommendation creation
  def recommendation_params
  	params.require(:recommendation).permit(:recipient_email,:comment)
  end

  #Function to build the customer email
  def customer_params
  	params.require(:customer).permit(:shopify_id, :name, :email)
  end

  #Function to build the customer email
  def product_params
  	param = params.require(:product).permit(:shopify_id, :price, :title, :url)
    param[:url] = STORE_URL + param[:url]
    param
  end

  #function to set headers in CORS
  def set_headers
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    response.headers['Access-Control-Request-Method'] = '*'
    response.headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

end
