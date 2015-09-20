require 'rails_helper'

RSpec.describe Item, type: :model do

	include TestFactories

	describe '#days_left' do 

		before do 
			@item = associated_item(created_at: Time.now)
		end
		it "counts the days to left before delete within 7 days" do

			expect(@item.days_left).to eq(7)
		end
	end

end

