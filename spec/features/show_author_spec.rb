require "rails_helper"

describe "Show author page", type: :feature do
  it "should display author details" do
    author = create(:author)
    visit author_path(author)
    expect(page).to have_text("first name: Alan")
  end
end
