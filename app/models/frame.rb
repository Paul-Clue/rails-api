class Frame < ApplicationRecord
  has_one_attached :pic
  validates :make, presence: true
end
