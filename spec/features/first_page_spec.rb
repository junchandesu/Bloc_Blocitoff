require 'rails_helper'

describe "First page" do   
	describe "#Welcome_index" do 
		it "has the first page info." do 
			visit root_path
			expect( page ).to have_content("HOLA!")
		end
	end

end