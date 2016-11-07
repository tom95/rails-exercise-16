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

  it "should not validate without last name" do
    author = build(:author, first_name: "alan", last_name: nil, homepage: "http://example.com")
    expect(author).to_not be_valid
  end

  it "should show validation errors" do
    visit new_author_path
    fill_in "author_first_name", with: "Alan"
    fill_in "author_homepage", with: "http://example.com"
    click_button "Create Author"

    expect(page).to have_text("Last name can't be blank")
  end

  it "should save changes" do
    author = create(:author)
    visit edit_author_path(author)

    fill_in "author_first_name", with: "Alan Mathison"
    click_button "Save Author"

    author = Author.find_by(last_name: "Turing")
    expect(author.first_name).to eql("Alan Mathison")
  end
end
