class AddSharedToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :shared, :boolean
  end
end
