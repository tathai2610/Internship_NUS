class AddLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :likes, :integer, default: 0
    add_column :albums, :likes, :integer, default: 0
  end
end
