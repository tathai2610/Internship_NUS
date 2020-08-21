class ChangeSharedInAlbum < ActiveRecord::Migration[6.0]
  def change
    change_column_default :albums, :shared, from: nil, to: true
  end
end
