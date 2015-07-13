class AddShopifyIdToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :shopify_id, :string
    add_column :customers, :name, :string
    add_column :customers, :email, :string
  end
end
