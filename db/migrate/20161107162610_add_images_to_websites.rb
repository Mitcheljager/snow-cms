class AddImagesToWebsites < ActiveRecord::Migration[5.0]
  def change
    add_column :websites, :images, :string
  end
end
