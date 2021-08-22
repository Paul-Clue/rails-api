class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  validates :name, presence: true
  validates :password, presence: true
end
