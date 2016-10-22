class AddStatusToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :status, :integer
  end
end
