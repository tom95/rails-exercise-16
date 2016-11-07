require "rails_helper"

describe "Index author page", type: :feature do
  it "should render" do
    visit authors_path
  end

  it "should list the name and homepage of all authors" do
    create(:author)
    visit authors_path
    expect(page).to have_text("Alan Turing")
    expect(page).to have_text("http://wikipedia.org/Alan_Turing")
  end

  it "should list first and last name in one column" do
    visit authors_path
    expect(page).to have_css("th", text: "Name")
  end

  it "should link to the new author page" do
    visit authors_path
    expect(page).to have_css("a", text: "Add author")
  end

  it "should link to the author page" do
    create(:author)
    visit authors_path
    expect(page).to have_css("a", text: "Show")
  end
end
