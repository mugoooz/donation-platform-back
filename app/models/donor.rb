class Donor < ApplicationRecord
  has_secure_password
  has_many :donations

  validates :name, :email, :phone_number, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }
end