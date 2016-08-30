class CreateUserSites < ActiveRecord::Migration
  def change
    create_table :user_sites do |t|
      t.string :name
      t.string :email
      t.string :access_token
      t.string :uid
      t.string :photo_url
      t.string :provider

      t.timestamps null: false
    end
  end
end
