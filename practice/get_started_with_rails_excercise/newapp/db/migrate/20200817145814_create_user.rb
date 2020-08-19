class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :firstname
      t.string :email
      t.string :password
      t.datetime :created
      t.datetime :last_updated

    end
  end
end
