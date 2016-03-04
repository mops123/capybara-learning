require 'rails_helper'

RSpec.feature "User Registration", type: :feature do
  before do
    visit root_path
    within('.navbar') { click_link('Sign up') }
  end

  context "failure" do
    before do
      # try to sign up without an email
      fill_in('user_password_confirmation', with: 'password')
      fill_in('user_password', with: 'password')
      click_button("Sign up")
    end

    it "displays an error message" do
      expect(page).to have_content('Please review the problems below:')

    # should still see 'Sign in' and 'Sign up'
    # should not see 'Profile' or 'Sign out'

      expect(page).to have_content('Sign in')
      expect(page).to have_content('Sign up')
      expect(page).not_to have_content('Profile')
      expect(page).not_to have_content('Sign out')
    end
    it "shows the correct navigation links"
    #!!!!!!!!!! no idea

  end

  context "success" do
    before do
      # sign up successfully
      fill_in('Email', with: 'random@e.mail')
      fill_in('user_password_confirmation', with: 'password')
      fill_in('user_password', with: 'password')
      click_button("Sign up")
    end

    it "displays a welcome message" do

    # should not see 'Sign in' and 'Sign up'
    # should see 'Profile' or 'Sign out'

    expect(page).not_to have_content('Sign in')
    expect(page).not_to have_content('Sign up')
    expect(page).to have_content('Profile')
    expect(page).to have_content('Sign out')
    end

    it "shows the correct navigation links"
  end
end
