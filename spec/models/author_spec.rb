require 'rails_helper'

RSpec.describe Author, type: :model do

  it "should have first name, last name, and homepage" do
    author = build(:author)

    expect(author.first_name).to_not be_nil
    expect(author.last_name).to_not be_nil
    expect(author.homepage).to_not be_nil
  end

  describe "Author #name" do
    it "should return the full name" do
      author = build(:author)
      expect(author.name).to == "Alan Turing"
    end
  end

end
