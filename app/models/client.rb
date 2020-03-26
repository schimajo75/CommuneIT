class Client < ApplicationRecord
  has_many :appointments
  has_many :consultants, through: :appointments

  validates :first_name, presence: { message: 'is required' }
  validates :last_name, presence: { message: 'is required' }
end
