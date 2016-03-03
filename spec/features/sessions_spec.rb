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
    end

    it "displays an error message"

    # should still see 'Sign in' and 'Sign up'
    # should not see 'Profile' or 'Sign out'
    it "shows the correct navigation links"
  end

  context "success" do
    before do
      # sign in
    end

    it "displays a welcome message"

    # should not see 'Sign in' and 'Sign up'
    # should see 'Profile' or 'Sign out'
    it "shows the correct navigation links"
  end
end
