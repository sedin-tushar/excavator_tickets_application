require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "has one excavator, dependent: :destroy" do
    should have_one(:excavator).dependent(:destroy)
  end

  it "validates uniqueness of request_number" do
    should validate_uniqueness_of(:request_number)
  end
end