class Idea < ApplicationRecord
  validates :name, :description, presence: true
  mount_uploader :picture, PictureUploader
end
