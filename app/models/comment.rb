class Comment < ApplicationRecord
  belongs_to :idea
  validates :user_name, :body, presence: true
end
