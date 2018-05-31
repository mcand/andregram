class AddProfilePictureAndAccessTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_picture, :string
    add_column :users, :access_token, :string
  end
end
