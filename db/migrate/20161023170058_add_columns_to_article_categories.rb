class AddColumnsToArticleCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :article_categories, :name, :string
    add_column :article_categories, :slug, :string
  end
end
