class AddCustomerEmailToRecommendation < ActiveRecord::Migration
  def change
    add_column :recommendations, :customer_email, :string
    add_column :recommendations, :customer_name, :string
    remove_column :recommendations, :customer_id, :string
  end
end
