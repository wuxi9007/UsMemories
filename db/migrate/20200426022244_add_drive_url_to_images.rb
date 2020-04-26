class AddDriveUrlToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :drive_url, :string
  end
end
