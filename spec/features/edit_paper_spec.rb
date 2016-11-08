require "rails_helper"

describe "Edit paper page", type: :feature do
  it "should render" do
    paper = create(:paper)
    visit edit_paper_path(paper)
  end
end

