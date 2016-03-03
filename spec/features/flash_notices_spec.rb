require 'rails_helper'

RSpec.feature "FlashNotices", type: :feature do
  before do
    # When an unauthenticated user visits
    # the edit_user_registration_path they
    # are redirected with a flash notice
    visit edit_user_registration_path
  end

  # check that the flash message exists
  # click to close the flash message
  # check that the flash message is gone
  it "can be dismissed by the user" do
    expect(page).to have_content("You need to sign in or sign up before continuing.")

    within('.alert') do
      find('.close').click
    end

    expect(page).to_not have_content("You need to sign in or sign up before continuing.")
  end
end
