require 'rails_helper'

RSpec.feature "User Registration", type: :feature do
  before do
    visit root_path
    within('.navbar') { click_link('Sign up') }
  end

  context "failure" do
    before do
      # try to sign up without an email
    end

    it "displays an error message"

    # should still see 'Sign in' and 'Sign up'
    # should not see 'Profile' or 'Sign out'
    it "shows the correct navigation links"
  end

  context "success" do
    before do
      # sign up successfully
    end

    it "displays a welcome message"

    # should not see 'Sign in' and 'Sign up'
    # should see 'Profile' or 'Sign out'
    it "shows the correct navigation links"
  end
end
