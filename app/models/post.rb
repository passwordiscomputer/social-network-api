class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user
  acts_as_followable
end
