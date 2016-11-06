require "rails_helper"

describe "Index author page", type: :feature do
  it "should render" do
    visit authors_path
  end
end
