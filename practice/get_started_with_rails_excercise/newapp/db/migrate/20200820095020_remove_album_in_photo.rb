class RemoveAlbumInPhoto < ActiveRecord::Migration[6.0]
  def change
    remove_column :photos, :album_id, :bigint
  end
end
