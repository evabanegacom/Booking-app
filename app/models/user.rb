# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :bookings, dependent: :destroy
  has_many :cars

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, length: { minimum: 5 }
  validates :password, presence: true, length: { minimum: 6 }
end
