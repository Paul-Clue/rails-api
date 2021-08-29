class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :frame

  validates :date, presence: true
end
