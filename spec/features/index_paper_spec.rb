require "rails_helper"

describe "Index paper page", type: :feature do
  it "should render" do
    visit papers_path
  end

  it "should list title, venue, and year of all papers" do
    create(:paper)
    visit papers_path
    expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")
  end
end

