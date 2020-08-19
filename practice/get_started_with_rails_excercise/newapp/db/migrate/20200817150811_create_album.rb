class CreateAlbum < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.datetime :datePublish

    end
  end
end
