class AddShopifyIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :shopify_id, :string
    add_column :products, :price, :string
  end
end
