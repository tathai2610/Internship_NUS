class CreatePhoto < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.datetime :datePublish

    end
  end
end
