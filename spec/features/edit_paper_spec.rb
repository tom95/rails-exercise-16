require "rails_helper"

describe "Edit paper page", type: :feature do
  it "should render" do
    paper = create(:paper)
    visit edit_paper_path(paper)
  end

  it "should save changes" do
    paper = create(:paper)

    visit edit_paper_path(paper)
    fill_in "paper_venue", with: "Mind 49"
    click_button "Save Paper"

    new_paper = Paper.find_by(venue: "Mind 49")
    expect(new_paper).to_not be_nil
    expect(new_paper.title).to eq(paper.title)
  end

  it "should allow to select 5 authors from 5 separate drop downs" do
    paper = create(:paper)
    visit edit_paper_path(paper)
    expect(page).to have_field("Author 1")
    expect(page).to have_field("Author 2")
    expect(page).to have_field("Author 3")
    expect(page).to have_field("Author 4")
    expect(page).to have_field("Author 5")
  end

  it "should pre-select the actual authors in the drop downs" do
    paper = create(:paper)
    visit edit_paper_path(paper)

    expect(page).to have_select("Author 1", selected: "Alan Turing")
  end
end

