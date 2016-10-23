class AddNiceUrlToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :nice_url, :string
  end
end
