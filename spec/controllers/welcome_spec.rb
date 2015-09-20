require 'rails_helper'

RSpec.describe WelcomeController, :type => "controller" do 
	describe "GET #index" do 
		it "responds successfully with an HTTP" do
			expect(response).to have_http_status(200)
		end

	end
	
end