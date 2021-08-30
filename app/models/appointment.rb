class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :frame

  validates :date, presence: true
  validates :city, presence: true
end
