class Usuario < ApplicationRecord
  require "securerandom"
  has_secure_password
  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 4}
  validates :username, presence: true, uniqueness: true
end
