require 'rails_helper'

feature 'User creates a new to_do list item' do

	include TestFactories
  scenario 'Successfully' do
  	user = authenticated_user
  	visit items_new_path
  	fill_in 'Name', with: "SLEEEP"
  	click_button 'Save'
  	expect( page ).to have_content("SLEEEP")
  end
end
