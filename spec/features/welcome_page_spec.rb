require 'rails_helper'


feature 'welcome page' do
	scenario 'welcome message' do
		visit "welcome/index"
		expect(page).to have_content('Welcome to Shouter')
	end	
end