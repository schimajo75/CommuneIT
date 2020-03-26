class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :consultant

  validates :issue, presence: { message: 'is required' }
  
end
