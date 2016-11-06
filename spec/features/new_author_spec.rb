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
end
