# rubocop:disable all
class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy
  validates :name, presence: true
  validates :password, presence: true
end
