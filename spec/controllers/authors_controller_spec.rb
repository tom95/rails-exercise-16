require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
	describe "GET index" do
		it "displays an error for the index page" do
			get :index
			expect(response).to have_text("You need to create an AuthorsController with a new action and set-up the appropriate routes")
		end
	end
end
