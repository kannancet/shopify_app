class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.integer :customer_id
      t.integer :product_id
      t.string :recipient_email
      t.text :comment

      t.timestamps null: false
    end
  end
end
