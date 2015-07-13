class AddCustomerIdToRecommendation < ActiveRecord::Migration
  def change
    add_column :recommendations, :customer_id, :integer
  end
end
