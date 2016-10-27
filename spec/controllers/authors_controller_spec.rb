require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
	describe "GET index" do
		it "displays an error for the index page" do
			get :new
			assert_response :success
		end
	end
end
