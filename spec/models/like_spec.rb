require 'rails_helper'
describe Like do
  
  it "can create like" do
    like = build(:like)
    expect(like).to be_valid
  end

  it "fail to create without user" do
    like = build(:like, user: nil)
    expect(like).not_to be_valid
  end
end