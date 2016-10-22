class AddIntroductionToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :introduction, :string
  end
end
