class Visit < ApplicationRecord
  belongs_to :user
  validates :fecha, presence: true
end
