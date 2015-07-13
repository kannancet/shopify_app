class RecommendationForm < ActiveRecord::Base

	#function to reset recommendation form
	def reset
		update(field_width: nil, 
           border_color: nil, 
           border_size: nil, 
           text_color: nil, 
           background_color: nil, 
           text_font_family: nil, 
           button_font_family: nil, 
           button_font_color: nil, 
           button_color: nil)
	end
end
