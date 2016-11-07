class AlterColumnWebsitesImagesToJson < ActiveRecord::Migration[5.0]
  def change
    change_column :websites, :images, :json
  end
end
