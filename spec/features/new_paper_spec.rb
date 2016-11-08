require "rails_helper"

describe "New paper page", type: :feature do
  it "should have text input for title, venue, and year" do
    visit new_paper_path
    expect(page).to have_field("paper_title")
    expect(page).to have_field("paper_venue")
    expect(page).to have_field("paper_year")
  end

  it "should save the paper" do
    visit new_paper_path
    fill_in "paper_title", with: "COMPUTING MACHINERY AND INTELLIGENCE"
    fill_in "paper_venue", with: "Mind 49: 433-460"
    fill_in "paper_year", with: 1950
    click_button "Create Paper"

    paper = Paper.find_by(title: "COMPUTING MACHINERY AND INTELLIGENCE")
    expect(paper).to_not be_nil
  end
end
