class Client < ApplicationRecord
  has_many :appointments
  has_many :consultants, through: :appointments
end
