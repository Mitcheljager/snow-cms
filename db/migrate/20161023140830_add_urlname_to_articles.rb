class AddUrlnameToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :urlname, :string
  end
end
