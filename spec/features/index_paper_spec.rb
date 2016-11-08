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

  it "should have a link to delete a paper" do
    create(:paper)
    visit papers_path
    expect(page).to have_css("a", text: "Destroy")
    click_link "Destroy"
    expect(Author.find_by title: "COMPUTING MACHINERY AND INTELLIGENCE").to be_nil
  end
end

