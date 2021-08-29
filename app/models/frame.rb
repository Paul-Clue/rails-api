class Frame < ApplicationRecord
  has_one_attached :mag
  has_many :appointments

  validates :make, presence: true
  validates :pic, presence: true
end
