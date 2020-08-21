class AddPhotoToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_reference :albums, :photo, foreign_key: true, optional: true
  end
end
