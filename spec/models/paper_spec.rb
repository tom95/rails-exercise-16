require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have title, venue, and year" do
    paper = build(:paper)
    expect(paper.year).to eq(1950)
  end
end
