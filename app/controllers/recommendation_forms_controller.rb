class RecommendationFormsController < ApplicationController

  layout 'embedded_app'

  #Function to create or find recommendation form
  def new
  	redirect_to recommend_form_customization
  end

  #Function to build new recommendation form
  def edit
  	@recommendation = Recommendation.new
    @css = encode_css(parse_layout)
  end


  #Function to save CSS for new recommendationf form
  def update
  	@recommend_form.update(form_params)
  	redirect_to recommend_form_customization
  end

  #Function to reset form
  def reset_form
    @recommend_form.reset
    redirect_to recommend_form_customization
  end

  private 

  #Function to limit the create params
  def form_params
  	params.require(:recommendation_form).permit(:field_width, 
        																				 :border_color, 
        																				 :border_size, 
        																				 :text_color, 
        																				 :background_color, 
        																				 :text_font_family, 
        																				 :button_font_family, 
                                                 :button_font_color,
        																				 :button_color)
  end

  #Function to build path for edit
  def recommend_form_customization
  	edit_recommendation_form_path(@recommend_form)
  end

  #function to parse layout
  def parse_layout
    render_to_string(partial: "form_dynamic_css", layout: false)
  end

  #Function to encode CSS
  def encode_css(layout)
    layout.gsub!("<", "&lt;").gsub!(">", "&gt;")
  end

end
