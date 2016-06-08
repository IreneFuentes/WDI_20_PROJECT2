class AddImageAndDescriptionToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :image, :text
    add_column :visits, :description, :text
  end
end
