class Ticket < ApplicationRecord
  has_one :excavator, dependent: :destroy
  validates :request_number, uniqueness: true
end
