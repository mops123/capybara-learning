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
  it "can be dismissed by the user"
end
