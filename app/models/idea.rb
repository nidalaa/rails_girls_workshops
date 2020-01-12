class Idea < ApplicationRecord
  validates :name, :description, presence: true
end
