class RemoveCount < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :photos_count, :integer
    remove_column :users, :albums_count, :integer
  end
end
