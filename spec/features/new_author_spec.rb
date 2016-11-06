require "rails_helper"

describe "New author page", type: :feature do
  it "should contain a field first and last name and homepage" do
    visit new_author_path
    expect(page).to have_field("author_first_name")
    expect(page).to have_field("author_last_name")
    expect(page).to have_field("author_homepage")
  end

  it "should contain a 'Create Author' submit button" do
    visit new_author_path
    expect(page).to have_button("Create Author")
  end

  it "should save the author" do
    visit new_author_path
    fill_in "author_first_name", with: "Alan"
    fill_in "author_last_name", with: "Turing"
    fill_in "author_homepage", with: "http://wikipedia.org/Alan_Turing"
    click_button "Create Author"

    author = Author.find_by(first_name: "Alan", last_name: "Turing")
    expect(author).to_not be_nil
  end
end
