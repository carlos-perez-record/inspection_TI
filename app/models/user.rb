class User < ApplicationRecord
  has_secure_password validations: false
  validates :email, uniqueness: true, format: /@/
  validates :password, presence: true, on: :create
  validates :password, length: { in: 6..20 }, allow_nil: true
  validates :name, presence: true
  validates :cedula, presence: true
end
