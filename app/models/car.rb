# frozen_string_literal: true

class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  mount_uploader :avatar, AvatarUploader

  validates :avatar, presence: true
  validates :model, presence: true
  validates :category, presence: true
  validates :manufacturer, presence: true
end
