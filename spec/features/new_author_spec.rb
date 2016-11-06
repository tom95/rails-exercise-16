require "rails_helper"

describe "New author page", type: :feature do
  it "should contain a field 'first name'" do
    visit new_author_path
    expect(page).to have_field("first name")
    expect(page).to have_field("last name")
    expect(page).to have_field("homepage")
  end
end