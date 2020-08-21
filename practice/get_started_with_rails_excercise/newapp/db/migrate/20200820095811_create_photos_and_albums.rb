class CreatePhotosAndAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums_photos do |t|
      t.belongs_to :photo, foreign_key: true, optional: true
      t.belongs_to :album, foreign_key: true, optional: true
    end
  end
end
