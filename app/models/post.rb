class ImageUploader < CarrierWave::Uploader::Base;

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
class Post < ApplicationRecord
  mount_base64_uploader :picture, ImageUploader
  belongs_to :user
  acts_as_followable

end
