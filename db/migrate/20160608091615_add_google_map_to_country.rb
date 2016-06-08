class AddGoogleMapToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :google_map, :text
  end
end
