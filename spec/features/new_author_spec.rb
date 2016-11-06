require "rails_helper"

describe "New author page", type: :feature do
  it "should contain a field first and last name and homepage" do
    visit new_author_path
    expect(page).to have_field("author_first_name")
    expect(page).to have_field("author_last_name")
    expect(page).to have_field("author_homepage")
  end

  it "should containe a 'Create Author' submit button" do
    expect(page).to have_field("commit", value: 'Create Author')
  end
end
