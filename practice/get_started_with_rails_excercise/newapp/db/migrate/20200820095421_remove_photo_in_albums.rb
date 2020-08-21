class RemovePhotoInAlbums < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :photo_id, :bigint
  end
end
