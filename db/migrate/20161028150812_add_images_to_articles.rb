class AddImagesToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :images, :json
  end
end
