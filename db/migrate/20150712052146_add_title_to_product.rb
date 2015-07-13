class AddTitleToProduct < ActiveRecord::Migration
  def change
    add_column :products, :title, :text
    add_column :products, :content, :text
    add_column :products, :url, :text
  end
end
