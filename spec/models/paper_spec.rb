require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have title, venue, and year" do
    paper = build(:paper)
    expect(paper.year).to eq(1950)
  end

  it "should not validate without title" do
    paper = build(:paper, title: nil)
    expect(paper).to_not be_valid
  end
end
