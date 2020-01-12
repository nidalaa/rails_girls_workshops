class Comment < ApplicationRecord
  belongs_to :idea
  validates :user_name, :body, presence: true
  scope :ordered_by_newest, -> { order('created_at DESC NULLS LAST')}

end
