class Frame < ApplicationRecord
  has_one_attached :mag
  validates :make, presence: true
  validates :pic, presence: true
end
