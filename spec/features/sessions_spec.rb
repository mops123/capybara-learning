require 'rails_helper'

RSpec.feature "User Sessions", type: :feature do
  let!(:user) { User.create(email: email, password: password, password_confirmation: password) }
  let(:email) { 'jill@example.com' }
  let(:password) { 'password' }

  before do
    visit root_path
    within('.navbar') { click_link('Sign in') }
  end

  context "failure" do
    before do
      # try to sign in without a password
      fill_in('Email', with: email)
      click_button('Sign in')
    end

    it "displays an error message" do

    # should still see 'Sign in' and 'Sign up'
    # should not see 'Profile' or 'Sign out'
    expect(page).to have_content('Sign in')
    expect(page).to have_content('Sign up')
    expect(page).not_to have_content('Profile')
    expect(page).not_to have_content('Sign out')
  end
    it "shows the correct navigation links"
  end

  context "success" do
    before do
      # sign in
      fill_in('Email', with: email)
      fill_in('Password', with: password)
      click_button('Sign in')
    end

    it "displays a welcome message" do

    # should not see 'Sign in' and 'Sign up'
    # should see 'Profile' or 'Sign out'

    expect(page).not_to have_content('Sign in')
    expect(page).not_to have_content('Sign up')
    expect(page).to have_content('Profile')
    expect(page).to have_content('Sign out')
    end

    it "shows the correct navigation links" do
      expect(page).not_to have_link("Sign in")
      expect(page).not_to have_link("Sign up")
      expect(page).to have_link("Profile")
      expect(page).to have_link("Sign out")

    end
  end
end
