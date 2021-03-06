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

  it "should not validate without venue" do
    paper = build(:paper, venue: nil)
    expect(paper).to_not be_valid
  end

  it "should not validate without year" do
    paper = build(:paper, year: nil)
    expect(paper).to_not be_valid
  end

  it "should not validate with non-integer year" do
    paper = build(:paper, year: "nineteen-fifty")
    expect(paper).to_not be_valid
  end

  it "should have and belong to many authors" do
    paper = build(:paper, authors: [])
    expect(paper.authors.length).to eq(0)
  end
end
