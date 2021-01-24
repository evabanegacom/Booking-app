class User < ApplicationRecord
  has_secure_password
  has_many :bookings, dependent: :destroy
  has_many :cars

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, length: { minimum: 5 }
  validates :password, presence: true, length: { minimum: 6 }

  def as_json(options = {})
    super(options.merge({ except: %i[password_digest created_at updated_at] }))
  end
end
