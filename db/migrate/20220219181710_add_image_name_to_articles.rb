class AddImageNameToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :image_name, :string
  end
end
