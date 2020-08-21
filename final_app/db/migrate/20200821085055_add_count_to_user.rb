class AddCountToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :photos_count, :integer
    add_column :users, :albums_count, :integer
  end
end
