class Post < ApplicationRecord
  mount_base64_uploader :picture, PictureUploader
  belongs_to :user
  acts_as_followable



end
