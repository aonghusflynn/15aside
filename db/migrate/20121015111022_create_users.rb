class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :facebook_id
      t.string :password_digest
      t.string :username
      t.datetime :last_login

      t.timestamps
    end
  end
end
