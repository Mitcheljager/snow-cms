class CreateWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :websites do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
