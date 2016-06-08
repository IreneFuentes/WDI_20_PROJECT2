class AddProfilePictureAndDescriptionAndFavoriteCountryToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_picture, :text
    add_column :users, :description, :text
    add_column :users, :favorite_country, :string
  end
end
