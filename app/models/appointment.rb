class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :consultant

  validates :issue, presence: { message: 'field cannot be empty' }
  
end
