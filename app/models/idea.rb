class Idea < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
end
