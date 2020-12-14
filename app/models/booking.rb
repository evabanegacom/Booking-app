class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :description, presence: true, length: { minimum: 5 }
  validates :date, presence: true
  validates :username, presence: true
  validates :model, presence: true
  validates :city, presence: true

  default_scope { order('created_at DESC') }
end
