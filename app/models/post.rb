class Post < ApplicationRecord
  mount_base64_uploader :picture, PictureUploader
  belongs_to :user
  acts_as_followable


  def item_params
    params.require(:item).permit(:name, :description :picture) # Add :picture as a permitted paramter
  end
end
