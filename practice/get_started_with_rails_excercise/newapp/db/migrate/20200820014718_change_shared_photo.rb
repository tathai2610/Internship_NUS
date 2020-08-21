class ChangeSharedPhoto < ActiveRecord::Migration[6.0]
  def change
    change_column :photos, :shared, :boolean
  end
end
