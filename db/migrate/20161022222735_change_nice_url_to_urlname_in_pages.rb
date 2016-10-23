class ChangeNiceUrlToUrlnameInPages < ActiveRecord::Migration[5.0]
  def change
    rename_column :pages, :nice_url, :urlname
  end
end
