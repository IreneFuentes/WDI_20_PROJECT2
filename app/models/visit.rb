class Visit < ActiveRecord::Base

  belongs_to :user
  belongs_to :country
  mount_uploader :image, VisitImageUploader

end
