require 'rails_helper'


feature 'Log In' do
	scenario 'User with invalid username/password cannot log in.' do
		
		visit "/"
		
		fill_in('Email', with: "test@email.com")
		fill_in("Password", with: "password")

		click_on("Let's Go")
		expect(page).to have_content("Invalid Email or password.")

	end


	scenario "User with valid username/password should be able to log in." do
		
		user = FactoryGirl.create(:user)

		visit "/"

		fill_in("Email", with: user.email)
		fill_in("Password", with: user.password)

		click_on("Let's Go")

		expect(page).to have_content("Newsfeed")
		expect(page).to have_content("Top Hustlers")
	end
end