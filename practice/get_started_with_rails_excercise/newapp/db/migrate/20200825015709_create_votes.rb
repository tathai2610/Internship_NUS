class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.belongs_to :user
      t.references :voteable, polymorphic: true

      t.timestamps
    end
  end
end
