class Post < ApplicationRecord
  mount_base64_uploader :picture, ImageUploader
  belongs_to :user
  acts_as_followable



end

class ImageUploader < CarrierWave::Uploader::Base; end
