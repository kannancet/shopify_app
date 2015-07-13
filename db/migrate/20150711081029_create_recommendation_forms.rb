class CreateRecommendationForms < ActiveRecord::Migration
  def change
    create_table :recommendation_forms do |t|
      t.integer :field_width
      t.string :border_color
      t.integer :border_size
      t.string :text_color
      t.string :background_color
      t.string :text_font_family
      t.string :button_font_family
      t.string :button_color

      t.timestamps null: false
    end
  end
end
