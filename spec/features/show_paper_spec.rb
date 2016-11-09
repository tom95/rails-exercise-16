require "rails_helper"

describe "Show paper page", type: :feature do
  it "should list the authors" do
    paper = create(:paper)
    visit paper_path(paper)
    expect(page).to have_text("Alan Turing")
  end
end

