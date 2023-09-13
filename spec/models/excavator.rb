require 'rails_helper'

RSpec.describe Excavator, type: :model do
  it "belongs to a ticket" do
    should belong_to(:ticket)
  end
end
