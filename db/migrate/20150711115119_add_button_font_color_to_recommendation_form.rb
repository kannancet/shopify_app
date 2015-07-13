class AddButtonFontColorToRecommendationForm < ActiveRecord::Migration
  def change
    add_column :recommendation_forms, :button_font_color, :string
  end
end
